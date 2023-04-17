include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT i.suschin@yandex.ru)
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "")

set(CPACK_SOURCE_IGNORE_FILES 
"\\\\.cmake;/build/;/.git/;/.github/"
)

set(CPACK_SOURCE_INSTALLED_DIRECTORIES "${CMAKE_SOURCE_DIR}; /")
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
set(CPACK_DEBIAN_PACKAGE_NAME "solver")
set(CPACK_DEBIAN_FILE_NAME "solver-${PRINT_VERSION}.deb")
set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "battka123")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

set(CPACK_SOURCE_GENERATOR "DEB")

include(CPack)
