vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://github.com/Karma5s/vcpkg-reg
  REF 4a801068c52b2dcda4eb6c50f53a0e9aeebdfc1f
  LFS
)

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/lib/"
  DESTINATION "${CURRENT_PACKAGES_DIR}/lib"
  FILES_MATCHING PATTERN "*.lib")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/bin/"
  DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
  FILES_MATCHING PATTERN "*.dll")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include")