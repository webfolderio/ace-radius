#header-only library
include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src)

vcpkg_from_github(OUT_SOURCE_PATH SOURCE_PATH
    REPO webfolderio/ace-radius
    REF 8eba230fca2ba899c008d9d742e9383d1d1b8652
    SHA512 3b5574cc38d73129f1dd5f25cd5a6051d8e16fe204c53f051d1f7638fb2325aa47909d9c0bb168238ea4a933867259d6507228b69be62eb48b4ebad38581ac0e
    HEAD_REF master
)

# Copy the header files
file(GLOB HEADER_FILES ${SOURCE_PATH}/src/*)
file(COPY ${HEADER_FILES}
     DESTINATION ${CURRENT_PACKAGES_DIR}/include/ace-radius)

# Put the licence file where vcpkg expects it
file(COPY ${SOURCE_PATH}/LICENSE
     DESTINATION ${CURRENT_PACKAGES_DIR}/share/ace-radius)

# Rename the license file
file(RENAME ${CURRENT_PACKAGES_DIR}/share/ace-radius/LICENSE
            ${CURRENT_PACKAGES_DIR}/share/ace-radius/copyright)
