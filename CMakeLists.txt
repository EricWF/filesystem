cmake_minimum_required (VERSION 2.8.11)

include(config/macros.cmake)
include(config/options.cmake)

################################################################################
#                            PROJECT Filesystem
################################################################################
# need C to get the pthreads library
project(FilesystemLibrary CXX C)


# Set configuration variables for elib's root path.
set(FILESYSTEM_ROOT_PATH ${CMAKE_CURRENT_LIST_DIR})
include_directories(${FILESYSTEM_ROOT_PATH}/include)


# Include compiler, library, build-type configuration.
include(config/config.cmake)

add_subdirectory(lib)
add_subdirectory(test)

# NOTE: This should be the last line of this file.
# When reconfiguring CMake some commands are noisy. We only need information
# about build configuration to be printed the first time cmake is run. 
# This variable is put in the cache to signal that CMake has completed its
# configuration step.
set(CONFIGURATION_DONE ON CACHE BOOL "Configuration has been done" FORCE)