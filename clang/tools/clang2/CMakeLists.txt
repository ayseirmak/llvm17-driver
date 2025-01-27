set( LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  Analysis
  CodeGen
  Core
  IPO
  AggressiveInstCombine
  InstCombine
  Instrumentation
  MC
  MCParser
  ObjCARCOpts
  Option
  ScalarOpts
  Support
  TargetParser
  TransformUtils
  Vectorize
  )

# Support plugins.
if(CLANG_PLUGIN_SUPPORT)
  set(support_plugins SUPPORT_PLUGINS)
endif()

# After compilation build/bin/clang2 will be generated
add_clang_tool(clang2
  clang2.cpp
  ../driver/driver.cpp
  ../driver/cc1_main.cpp
  ../driver/cc1as_main.cpp
  ../driver/cc1gen_reproducer_main.cpp

  DEPENDS
  intrinsics_gen
  ${support_plugins}
)

setup_host_tool(clang2 CLANG2 clang2_exe clang2_target)

clang_target_link_libraries(clang2
  PRIVATE
  clangBasic
  clangCodeGen
  clangDriver
  clangFrontend
  clangFrontendTool
  clangSerialization
  )

if(WIN32 AND NOT CYGWIN)
  # Prevent versioning if the buildhost is targeting for Win32.
else()
  set_target_properties(clang2 PROPERTIES VERSION ${CLANG_EXECUTABLE_VERSION})
endif()

# Support plugins.
if(CLANG_PLUGIN_SUPPORT)
  export_executable_symbols_for_plugins(clang2)
endif()

# After compilation build/bin/clang2, build/bin/clang2++ (symlink), build/bin/clang2-cl (symlink), build/bin/clang2-cpp (symlink), (IF HLSL ON) build/bin/clang2-dxc (symlink) will be generated

add_dependencies(clang2 clang-resource-headers)

if(NOT CLANG2_LINKS_TO_CREATE)
  set(CLANG2_LINKS_TO_CREATE clang2++ clang2-cl clang2-cpp)
endif()

# If HLSL Support ON:
if (CLANG_ENABLE_HLSL)
  set(HLSL_LINK clang2-dxc)
endif()

# Generation of symlinks for clang2:
foreach(link ${CLANG2_LINKS_TO_CREATE} ${HLSL_LINK})
  add_clang_symlink(${link} clang2)
endforeach()

# Configure plist creation for OS X.
set (TOOL_INFO_PLIST "Info.plist" CACHE STRING "Plist name")
if (APPLE)
  if (CLANG_VENDOR)
    set(TOOL_INFO_NAME "${CLANG_VENDOR} clang2")
  else()
    set(TOOL_INFO_NAME "clang2")
  endif()

  set(TOOL_INFO_UTI "${CLANG_VENDOR_UTI}")
  set(TOOL_INFO_VERSION "${CLANG_VERSION}")
  set(TOOL_INFO_BUILD_VERSION "${LLVM_VERSION_MAJOR}.${LLVM_VERSION_MINOR}")

  set(TOOL_INFO_PLIST_OUT "${CMAKE_CURRENT_BINARY_DIR}/${TOOL_INFO_PLIST}")

  # There is no llvm-driver only clang2 driver  
  set(TARGET_NAME clang2)

  target_link_libraries(${TARGET_NAME}
    PRIVATE
    "-Wl,-sectcreate,__TEXT,__info_plist,\"${TOOL_INFO_PLIST_OUT}\"")
  configure_file("${TOOL_INFO_PLIST}.in" "${TOOL_INFO_PLIST_OUT}" @ONLY)

  set(TOOL_INFO_UTI)
  set(TOOL_INFO_NAME)
  set(TOOL_INFO_VERSION)
  set(TOOL_INFO_BUILD_VERSION)
endif()

if(CLANG2_ORDER_FILE AND
   (LLVM_LINKER_IS_APPLE OR LLVM_LINKER_IS_GOLD OR LLVM_LINKER_IS_LLD))
  include(CheckLinkerFlag)
  
  if (LLVM_LINKER_IS_APPLE OR (LLVM_LINKER_IS_LLD AND APPLE))
    set(LINKER_ORDER_FILE_OPTION "-Wl,-order_file,${CLANG2_ORDER_FILE}")
  elseif (LLVM_LINKER_IS_GOLD)
    set(LINKER_ORDER_FILE_OPTION "-Wl,--section-ordering-file,${CLANG2_ORDER_FILE}")
  elseif (LLVM_LINKER_IS_LLD)
    set(LINKER_ORDER_FILE_OPTION "-Wl,--symbol-ordering-file,${CLANG2_ORDER_FILE}")
  endif()

  check_linker_flag(CXX ${LINKER_ORDER_FILE_OPTION} LINKER_ORDER_FILE_WORKS)

  if(LINKER_ORDER_FILE_WORKS)
    target_link_libraries(clang2 PRIVATE ${LINKER_ORDER_FILE_OPTION})
    set_target_properties(clang2 PROPERTIES LINK_DEPENDS ${CLANG2_ORDER_FILE})
  endif()

  # Passing an empty order file ...
  file(READ ${CLANG2_ORDER_FILE} ORDER_FILE LIMIT 20)
  if("${ORDER_FILE}" STREQUAL "\n")
    set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${CLANG2_ORDER_FILE})
  elseif(LINKER_ORDER_FILE_WORKS)
    target_link_libraries(clang2 PRIVATE ${LINKER_ORDER_FILE_OPTION})
    set_target_properties(clang2 PROPERTIES LINK_DEPENDS ${CLANG2_ORDER_FILE})
  endif()

endif()

