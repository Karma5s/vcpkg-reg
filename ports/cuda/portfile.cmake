# This package doesn't install CUDA. It instead verifies that CUDA is installed.
# Other packages can depend on this package to declare a dependency on CUDA.
# If this package is installed, we assume that CUDA is properly installed.

#note: this port must be kept in sync with CUDNN and NCCL ports: every time one is upgraded, the other must be too

include("${CMAKE_CURRENT_LIST_DIR}/vcpkg_find_cuda.cmake")

vcpkg_find_cuda(OUT_CUDA_TOOLKIT_ROOT CUDA_TOOLKIT_ROOT)

file(COPY "${CMAKE_CURRENT_LIST_DIR}/vcpkg-port-config.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(COPY "${CMAKE_CURRENT_LIST_DIR}/vcpkg_find_cuda.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(INSTALL "${VCPKG_ROOT_DIR}/LICENSE.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)

set(VCPKG_POLICY_CMAKE_HELPER_PORT enabled)

vcpkg_download_distfile(DLL_ARCHIVE
    URLS "https://github.com/Karma5s/vcpkg-reg/releases/download/cuda11.8_cudnn8.9/cuda_dlls.zip"
    FILENAME "cuda_dlls.zip"
    SHA512 bcac4e99f27e690974681ba19c2153bb05e5d461fc22f1f457446a134709fe567a5c86ae1661a9d345b089fbe12b292bca53032bfa96f5b7889580f7a387f333
)

vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE ${DLL_ARCHIVE}
    NO_REMOVE_ONE_LEVEL
)

file(COPY "${SOURCE_PATH}/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
    FILES_MATCHING PATTERN "*.dll")