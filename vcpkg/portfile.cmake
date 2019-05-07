#header-only library
include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src)

vcpkg_from_github(OUT_SOURCE_PATH SOURCE_PATH
    REPO webfolderio/bizon
    REF f81e297591410f67277068d432b1e029ec1d3a41
    SHA512 1
    HEAD_REF master
)

# Copy the header files
file(GLOB HEADER_FILES ${SOURCE_PATH}/ace-radius/src/*)
file(COPY ${HEADER_FILES}
     DESTINATION ${CURRENT_PACKAGES_DIR}/include/ace-radius)

# Put the licence file where vcpkg expects it
file(COPY ${SOURCE_PATH}/LICENSE
     DESTINATION ${CURRENT_PACKAGES_DIR}/share/ace-radius)

# Rename the license file
file(RENAME ${CURRENT_PACKAGES_DIR}/share/ace-radius/LICENSE
            ${CURRENT_PACKAGES_DIR}/share/ace-radius/copyright)