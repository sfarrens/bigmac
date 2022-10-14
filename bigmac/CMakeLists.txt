cmake_minimum_required(VERSION 3.0)
project(bigmac)

# Set BigMac Version
set(BIGMAC_MAJOR_VERSION 0)
set(BIGMAC_MINOR_VERSION 0)
set(BIGMAC_PATCH_VERSION 5)
set(BIGMAC_VERSION
  ${BIGMAC_MAJOR_VERSION}.${BIGMAC_MINOR_VERSION}.${BIGMAC_PATCH_VERSION})

# Set latest version of macOS system
set(MACOS_LATEST "12.6")
set(DARWIN_LATEST "12.5.0")
set(XCODE_LATEST "14.1")

export(PACKAGE bigmac)

# Set CMake install location
set(INSTALL_CMAKE_DIR "lib/cmake/BigMac")
message(STATUS "CMake configuration file install location: " ${INSTALL_CMAKE_DIR})

# Define targets
set(BIGMAC_TARGETS BigMacConfig BigMacConfigVersion)
list(TRANSFORM BIGMAC_TARGETS APPEND ".cmake")

# Build CMake configuration files
foreach(target ${BIGMAC_TARGETS})
  configure_file("${target}.in" "${PROJECT_BINARY_DIR}/${target}" @ONLY)
endforeach(target)

# Prepend CMake build location
list(TRANSFORM BIGMAC_TARGETS PREPEND "${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}/")

# Install CMake configuration files
install(FILES ${BIGMAC_TARGETS} DESTINATION ${INSTALL_CMAKE_DIR})
