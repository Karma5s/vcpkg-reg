vcpkg_check_linkage(ONLY_DYNAMIC_LIBRARY)

vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/microsoft/onnxruntime/releases/download/v${VERSION}/onnxruntime-win-x64-gpu-${VERSION}.zip"
    FILENAME "onnxruntime-win-x64-gpu-${VERSION}.zip"
    SHA512 09f702128f6a9b22b2d5b56e998264eb1f18fcf0fab1767703bcd327bb40325e4d52eab30f4c94379dda304a4c7807a7bb2ad91bbf1148483ecba1ad54a56ef7
)

vcpkg_extract_source_archive(
    SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
    NO_REMOVE_ONE_LEVEL
)

file(MAKE_DIRECTORY
        ${CURRENT_PACKAGES_DIR}/include
        ${CURRENT_PACKAGES_DIR}/lib
        ${CURRENT_PACKAGES_DIR}/bin
        ${CURRENT_PACKAGES_DIR}/debug/lib
        ${CURRENT_PACKAGES_DIR}/debug/bin
    )

file(COPY
        ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/include
        DESTINATION ${CURRENT_PACKAGES_DIR}
    )

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/lib)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/lib)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.pdb
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/lib)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/lib)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.lib
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_shared.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_tensorrt.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)

file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/bin)
file(COPY ${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/lib/onnxruntime_providers_cuda.dll
    DESTINATION ${CURRENT_PACKAGES_DIR}/debug/bin)
# # Handle copyright
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/onnxruntime-win-x64-gpu-${VERSION}/LICENSE")
