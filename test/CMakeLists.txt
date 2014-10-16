
# Configure for python
include(FindPythonInterp)
if (NOT PYTHONINTERP_FOUND)
  message(FATAL_ERROR "Cannot find python interpreter")
endif()

# Configure LIT
set(LIT_EXECUTABLE "${CMAKE_SOURCE_DIR}/packages/lit/lit.py" 
    CACHE FILEPATH "The LIT interpreter")

# Configure Compile flags
set(TEST_COMPILE_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_${CMAKE_BUILD_TYPE}} ${CXX_FLAGS}")
# Configure Link flags
set(TEST_LINK_FLAGS "$ENV{LDFLAGS}")



# Create LIT configuration file
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.in
    ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg
    @ONLY)

# Create check makefile rule file
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/check-lit.mk.in
    ${CMAKE_BINARY_DIR}/rules/check-lit.mk
    @ONLY)