#header-only library
include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src)

vcpkg_from_github(OUT_SOURCE_PATH SOURCE_PATH
    REPO webfolderio/ace-radius
    REF 1cc1e7c7cf87bcf67113e6694594b60f32414d73
    SHA512 e61f10c389e58322e5e3c0a0d1faf172b8b6d4acd966bdd7f4ba0f5344a18192bcd0c0d22eaa2207248f9cdd57d319c792c7f079e248108d6d0d5c08d7dcf778
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
