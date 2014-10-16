

################################################################################
# C++ Version Config
# NOTE: Default is C++11
option(CONFIG_CXX1Y "Compile using c++1y standard" OFF)

if (NOT CONFIG_CXX1Y)
    config_message( STATUS "Configuring for Standard: C++11" )
    set(STD_VERSION "c++11")
else()
    config_message( STATUS "Configuring for Standard: C++1y" )
    set(STD_VERSION "c++1y")
endif()


################################################################################
# Adds a ton of warnings to the build. 
# NOTE: ALL CODE SHOULD COMPILE CLEANLY WITH THIS ON!
option(CONFIG_ALL_WARNINGS "Add warnings for GCC/Clang" ON)