vcpkg_download_distfile(DLL_ARCHIVE
    URLS "https://github.com/ensign-vanguard/vcpkg-reg/releases/download/cuda11.8_cudnn8.9/cuda_dlls.zip"
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