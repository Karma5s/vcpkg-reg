vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://github.com/Karma5s/vcpkg-reg
  REF 9700ecb1e72f88782406803e8493635240434196
)

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/bin/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
    FILES_MATCHING PATTERN "*.dll")

file(RENAME "${CURRENT_PACKAGES_DIR}/bin/velopack_libc_win_x64_msvc.dll"
            "${CURRENT_PACKAGES_DIR}/bin/velopack_libc.dll")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/lib/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/lib"
    FILES_MATCHING PATTERN "*.lib")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include")