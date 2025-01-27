# Install script for directory: /home/airmak/llvm-project/clang/lib/Headers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/builtins.h"
    "/home/airmak/llvm-project/clang/lib/Headers/float.h"
    "/home/airmak/llvm-project/clang/lib/Headers/inttypes.h"
    "/home/airmak/llvm-project/clang/lib/Headers/iso646.h"
    "/home/airmak/llvm-project/clang/lib/Headers/limits.h"
    "/home/airmak/llvm-project/clang/lib/Headers/module.modulemap"
    "/home/airmak/llvm-project/clang/lib/Headers/stdalign.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdarg.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdatomic.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdbool.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stddef.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__stddef_max_align_t.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdint.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdnoreturn.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tgmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/unwind.h"
    "/home/airmak/llvm-project/clang/lib/Headers/varargs.h"
    "/home/airmak/llvm-project/clang/lib/Headers/arm_acle.h"
    "/home/airmak/llvm-project/clang/lib/Headers/arm_cmse.h"
    "/home/airmak/llvm-project/clang/lib/Headers/armintr.h"
    "/home/airmak/llvm-project/clang/lib/Headers/arm64intr.h"
    "/home/airmak/llvm-project/clang/lib/Headers/arm_neon_sve_bridge.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_builtin_vars.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_complex_builtins.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_device_functions.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_texture_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_libdevice_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_math_forward_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_runtime_wrapper.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_circ_brev_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_protos.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_types.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hvx_hexagon_protos.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_libdevice_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_stdlib.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_runtime_wrapper.h"
    "/home/airmak/llvm-project/clang/lib/Headers/larchintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/msa.h"
    "/home/airmak/llvm-project/clang/lib/Headers/opencl-c.h"
    "/home/airmak/llvm-project/clang/lib/Headers/opencl-c-base.h"
    "/home/airmak/llvm-project/clang/lib/Headers/altivec.h"
    "/home/airmak/llvm-project/clang/lib/Headers/htmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/htmxlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/riscv_ntlh.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sifive_vector.h"
    "/home/airmak/llvm-project/clang/lib/Headers/s390intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vecintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin_gen.h"
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin_approx.h"
    "/home/airmak/llvm-project/clang/lib/Headers/adxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ammintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxcomplexintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxfp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bf16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bitalgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512cdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512dqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512erintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512fintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512fp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512ifmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512ifmavlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512pfintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmivlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbf16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbitalgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlcdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vldqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlfp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvbmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvp2intersectintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vp2intersectintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vpopcntdqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vpopcntdqvlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxifmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxneconvertintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniint16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniint8intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/bmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/bmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cetintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cldemoteintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clflushoptintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clwbintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clzerointrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cmpccxaddintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/crc32intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/emmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/enqcmdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/f16cintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fma4intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fxsrintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/gfniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hresetintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ia32intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/immintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/invpcidintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/keylockerintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/lwpintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/lzcntintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mm3dnow.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/movdirintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mwaitxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/nmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pconfigintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pkuintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/popcntintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/prfchiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/prfchwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ptwriteintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/raointintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rdpruintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rdseedintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rtmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/serializeintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sgxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sha512intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/shaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sm3intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sm4intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/smmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tbmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tsxldtrkintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/uintrintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vaesintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vpclmulqdqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/waitpkgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/wbnoinvdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__wmmintrin_aes.h"
    "/home/airmak/llvm-project/clang/lib/Headers/wmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/home/airmak/llvm-project/clang/lib/Headers/x86gprintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/x86intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xopintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsavecintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsaveintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsaveoptintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsavesintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xtestintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cet.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cpuid.h"
    "/home/airmak/llvm-project/clang/lib/Headers/wasm_simd128.h"
    "/home/airmak/llvm-project/clang/lib/Headers/intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vadefs.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mm_malloc.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_neon.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_fp16.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_sve.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_sme_draft_spec_subject_to_change.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_bf16.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_mve.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_cde.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/cuda_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/algorithm"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/cmath"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/complex"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/cuda_wrappers/bits" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/shared_ptr_base.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/basic_string.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/basic_string.tcc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/ppc_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/mmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/xmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/mm_malloc.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/emmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/pmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/tmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/smmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/bmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/bmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/immintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/x86intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/x86gprintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/llvm_libc_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/llvm_libc_wrappers/stdio.h"
    "/home/airmak/llvm-project/clang/lib/Headers/llvm_libc_wrappers/stdlib.h"
    "/home/airmak/llvm-project/clang/lib/Headers/llvm_libc_wrappers/string.h"
    "/home/airmak/llvm-project/clang/lib/Headers/llvm_libc_wrappers/ctype.h"
    "/home/airmak/llvm-project/clang/lib/Headers/llvm_libc_wrappers/inttypes.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/openmp_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/cmath"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/__clang_openmp_device_functions.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "core-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/builtins.h"
    "/home/airmak/llvm-project/clang/lib/Headers/float.h"
    "/home/airmak/llvm-project/clang/lib/Headers/inttypes.h"
    "/home/airmak/llvm-project/clang/lib/Headers/iso646.h"
    "/home/airmak/llvm-project/clang/lib/Headers/limits.h"
    "/home/airmak/llvm-project/clang/lib/Headers/module.modulemap"
    "/home/airmak/llvm-project/clang/lib/Headers/stdalign.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdarg.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdatomic.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdbool.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stddef.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__stddef_max_align_t.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdint.h"
    "/home/airmak/llvm-project/clang/lib/Headers/stdnoreturn.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tgmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/unwind.h"
    "/home/airmak/llvm-project/clang/lib/Headers/varargs.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "arm-common-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/arm_acle.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_neon.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_fp16.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "arm-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/arm_cmse.h"
    "/home/airmak/llvm-project/clang/lib/Headers/armintr.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_mve.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_cde.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "aarch64-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/arm64intr.h"
    "/home/airmak/llvm-project/clang/lib/Headers/arm_neon_sve_bridge.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_sve.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_sme_draft_spec_subject_to_change.h"
    "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/arm_bf16.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cuda-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/cuda_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/algorithm"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/cmath"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/complex"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cuda-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/cuda_wrappers/bits" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/shared_ptr_base.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/basic_string.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cuda_wrappers/bits/basic_string.tcc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cuda-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_builtin_vars.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_complex_builtins.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_device_functions.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_texture_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_libdevice_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_math_forward_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_cuda_runtime_wrapper.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hexagon-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_circ_brev_intrinsics.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_protos.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hexagon_types.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hvx_hexagon_protos.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hip-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_libdevice_declares.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_stdlib.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__clang_hip_runtime_wrapper.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "loongarch-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/larchintrin.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "mips-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/msa.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ppc-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/ppc_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/mmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/xmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/mm_malloc.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/emmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/pmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/tmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/smmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/bmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/bmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/immintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/x86intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ppc_wrappers/x86gprintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ppc-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/altivec.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ppc-htm-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/htmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/htmxlintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "riscv-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/riscv_ntlh.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "systemz-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/s390intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vecintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ve-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin_gen.h"
    "/home/airmak/llvm-project/clang/lib/Headers/velintrin_approx.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "webassembly-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/wasm_simd128.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "x86-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/adxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ammintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxcomplexintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxfp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/amxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bf16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bitalgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512bwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512cdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512dqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512erintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512fintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512fp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512ifmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512ifmavlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512pfintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vbmivlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbf16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbitalgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlbwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlcdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vldqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlfp16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvbmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vlvp2intersectintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vp2intersectintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vpopcntdqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avx512vpopcntdqvlintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxifmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxneconvertintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniint16intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniint8intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/avxvnniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/bmi2intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/bmiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cetintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cldemoteintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clflushoptintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clwbintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/clzerointrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cmpccxaddintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/crc32intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/emmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/enqcmdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/f16cintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fma4intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fmaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/fxsrintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/gfniintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hresetintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ia32intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/immintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/invpcidintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/keylockerintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/lwpintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/lzcntintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mm3dnow.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/movdirintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/mwaitxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/nmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pconfigintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pkuintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/pmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/popcntintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/prfchiintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/prfchwintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/ptwriteintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/raointintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rdpruintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rdseedintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/rtmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/serializeintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sgxintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sha512intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/shaintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sm3intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/sm4intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/smmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tbmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/tsxldtrkintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/uintrintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vaesintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vpclmulqdqintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/waitpkgintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/wbnoinvdintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__wmmintrin_aes.h"
    "/home/airmak/llvm-project/clang/lib/Headers/wmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/home/airmak/llvm-project/clang/lib/Headers/x86gprintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/x86intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xmmintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xopintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsavecintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsaveintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsaveoptintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xsavesintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/xtestintrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cet.h"
    "/home/airmak/llvm-project/clang/lib/Headers/cpuid.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hlsl-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/hlsl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hlsl-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/hlsl" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/hlsl/hlsl_basic_types.h"
    "/home/airmak/llvm-project/clang/lib/Headers/hlsl/hlsl_intrinsics.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "opencl-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/opencl-c.h"
    "/home/airmak/llvm-project/clang/lib/Headers/opencl-c-base.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "openmp-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/openmp_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/cmath"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/__clang_openmp_device_functions.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "openmp-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include/openmp_wrappers" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/math.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/cmath"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/__clang_openmp_device_functions.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/complex_cmath.h"
    "/home/airmak/llvm-project/clang/lib/Headers/openmp_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "utility-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES "/home/airmak/llvm-project/clang/lib/Headers/mm_malloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "windows-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/17/include" TYPE FILE FILES
    "/home/airmak/llvm-project/clang/lib/Headers/intrin.h"
    "/home/airmak/llvm-project/clang/lib/Headers/vadefs.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/airmak/llvm-project/clang2-build/tools/clang/lib/Headers/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
