set(LLVM_LINK_COMPONENTS
  Support
)

add_clang_executable(clang2
  clang2.cpp
)

target_link_libraries(clang2
  PRIVATE
  clangBasic
  clangFrontend
)

