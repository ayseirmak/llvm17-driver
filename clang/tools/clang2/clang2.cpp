#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <sstream> // For std::istringstream

#include "clang/Driver/Driver.h"
#include "clang/Driver/Compilation.h" // Include full definition of Compilation
#include "clang/Frontend/TextDiagnosticPrinter.h"
#include "llvm/TargetParser/Host.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Option/Option.h"
#include "llvm/ADT/SmallVector.h" // For SmallVector
#include "llvm/Support/VirtualFileSystem.h"

int runClangCompilation(const std::string &compilerPath, const std::string &sourceFile, const std::string &flags) {
    llvm::IntrusiveRefCntPtr<clang::DiagnosticOptions> diagOpts = new clang::DiagnosticOptions();
    llvm::IntrusiveRefCntPtr<clang::DiagnosticsEngine> diags = new clang::DiagnosticsEngine(
        new clang::DiagnosticIDs(),
        diagOpts,
        new clang::TextDiagnosticPrinter(llvm::errs(), diagOpts.get())
    );

    clang::driver::Driver driver(compilerPath, llvm::sys::getDefaultTargetTriple(), *diags);

    std::vector<std::string> args = {compilerPath, sourceFile};
    std::istringstream flagStream(flags);
    std::string flag;
    while (flagStream >> flag) {
        args.push_back(flag);
    }

    std::vector<const char*> cArgs;
    for (const std::string &arg : args) {
        cArgs.push_back(arg.c_str());
    }

    // Build the compilation job
    clang::driver::Compilation* rawCompilation = driver.BuildCompilation(cArgs);
    if (!rawCompilation) {
        llvm::errs() << "Error: Failed to build the compilation job.\n";
        return 1;
    }

    // Wrap the raw pointer in a std::unique_ptr with the default deleter
    std::unique_ptr<clang::driver::Compilation> compilation(rawCompilation);

    // Execute the compilation
    llvm::SmallVector<std::pair<int, const clang::driver::Command*>, 4> FailingCommands;
    int result = driver.ExecuteCompilation(*compilation, FailingCommands);
    if (result != 0) {
        llvm::errs() << "Compilation failed with error code " << result << ".\n";
    }

    return result;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
        return 1;
    }

    std::string inputFile = argv[1];
    std::ifstream file(inputFile);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << inputFile << std::endl;
        return 1;
    }

    std::string compilerPath, sourceFile, flags;

    // Read the lines from the file
    if (!std::getline(file, compilerPath) || compilerPath.empty()) {
        std::cerr << "Error: Missing compiler path in input file." << std::endl;
        return 1;
    }
    if (!std::getline(file, sourceFile) || sourceFile.empty()) {
        std::cerr << "Error: Missing source file in input file." << std::endl;
        return 1;
    }
    if (!std::getline(file, flags)) {
        std::cerr << "Error: Missing compilation flags in input file." << std::endl;
        return 1;
    }

    // Close the file
    file.close();

    // Call the LLVM-based Clang compilation function
    return runClangCompilation(compilerPath, sourceFile, flags);
}
