vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Karma5s/vcpkg-reg
  REF "2.15.0"
  SHA512 3e1b5cc606cdacadf951e18687790bee936f152958652ebcb20e807f7821ad7fe16e7cb2e9ff102b173f1b357db6ccfe2edc7fd9820ba722586243445f9b2b06
  HEAD_REF master
)

file(INSTALL "${SOURCE_PATH}/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/lib"
    FILES_MATCHING PATTERN "*.lib")

file(INSTALL "${SOURCE_PATH}/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
    FILES_MATCHING PATTERN "*.dll")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include")