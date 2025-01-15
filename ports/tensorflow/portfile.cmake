vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO ensign-vanguard/vcpkg-reg
  REF "2.15.0"
  SHA512 3e1b5cc606cdacadf951e18687790bee936f152958652ebcb20e807f7821ad7fe16e7cb2e9ff102b173f1b357db6ccfe2edc7fd9820ba722586243445f9b2b06
  HEAD_REF master
)

vcpkg_download_distfile(DLL_ARCHIVE
    URLS "https://github.com/ensign-vanguard/vcpkg-reg/releases/download/2.15.0/tensorflow.dll"
    FILENAME "tensorflow.dll"
    SHA512 ab6e99dc4f5b1c635230e832d70739f5ae86e2b591c2c6a8e735f3624af4c185e0bce447ff89c2ef187b23d9cd68c43559eb7ded86fbcbf892df24e00dc48565
)
vcpkg_download_distfile(LIB_ARCHIVE
    URLS "https://github.com/ensign-vanguard/vcpkg-reg/releases/download/2.15.0/tensorflow.lib"
    FILENAME "tensorflow.lib"
    SHA512 ab52766d061251602e50be2db9ddd12200042e546c04af345413d7a66026e39d303e984013abe5769ea5628c66a320468a5f95349d84f6fe93d20e7f49ac0aa6
)

file(INSTALL "${DLL_ARCHIVE}"
    DESTINATION "${CURRENT_PACKAGES_DIR}/bin"
    FILES_MATCHING PATTERN "*.dll")

file(INSTALL "${LIB_ARCHIVE}"
    DESTINATION "${CURRENT_PACKAGES_DIR}/lib"
    FILES_MATCHING PATTERN "*.lib")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include")