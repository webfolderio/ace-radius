#header-only library
include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src)

vcpkg_from_github(OUT_SOURCE_PATH SOURCE_PATH
    REPO webfolderio/ace-radius
    REF 8ae122260a1e8a3b12dda08c2eb159af6f3df410
    SHA512 610319d4bac1dff15f2146eae031663fef114eb67876cef6e1e32d04f756e39d01bac39ea3099fa56b7151cc890b59736dc44ba2b7e918d7ba929aa965edc9e9
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