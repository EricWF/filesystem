################################################################################
#                                Build Type Config
################################################################################
if( NOT CMAKE_BUILD_TYPE )
  set( CMAKE_BUILD_TYPE DEBUG CACHE STRING
       "Choose the type of build"
       FORCE )
endif()

config_message( STATUS "Configuring for Build Type: ${CMAKE_BUILD_TYPE}")

set( CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG" )
set( CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG" )
set( CMAKE_C_FLAGS_DEBUG " -g -fno-omit-frame-pointer " )
set( CMAKE_CXX_FLAGS_DEBUG " -g -fno-omit-frame-pointer " )
set( CMAKE_C_FLAGS_TEST " -g -O0 -fno-omit-frame-pointer -fno-elide-constructors --coverage")
set( CMAKE_CXX_FLAGS_TEST " -g -O0 -fno-omit-frame-pointer -fno-elide-constructors --coverage")


set(CXX_FLAGS "")
add_flags(CXX_FLAGS -Wall -Wextra -pedantic)

################################################################################
##                         Compiler Config
################################################################################
if ( ${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU" )
    config_message(STATUS "Configuring for Compiler: GCC")
    if (CMAKE_CXX_COMPILER_VERSION VERSION_LESS "4.8.0")
        message(WARNING "Insufficient GCC Version")
    endif()
    if(CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL "4.9.0"
       OR CMAKE_CXX_COMPILER_VERSION VERSION_GREATER "4.9.0")
        add_flags(CXX_FLAGS -fdiagnostics-color=auto)
    endif()
    add_flags(CXX_FLAGS -fmax-errors=5)
elseif( ${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang" )
    config_message(STATUS "Configuring for Compiler: Clang")
    if (CONFIG_CXX1Y AND CMAKE_CXX_COMPILER_VERSION VERSION_LESS "3.4")
        message(FATAL_ERROR "Insufficient Clang Version for C++1y")
    endif()
    add_flags(CXX_FLAGS -ferror-limit=3)
else()
    message( FATAL_ERROR "Compiler not supported! (${CMAKE_CXX_COMPILER_ID})" )
endif()

################################################################################
set(WARNING_FLAGS "")
if (CONFIG_ALL_WARNINGS)
    add_flags( WARNING_FLAGS
        -pedantic-errors  -Waggregate-return -Wcast-align 
        -Wcast-qual  -Wchar-subscripts  -Wcomment -Wconversion 
        -Wdisabled-optimization -Wfloat-equal  -Wformat  -Wformat=2 
        -Wformat-nonliteral -Wformat-security  -Wformat-y2k -Wimport  -Winit-self  
        -Winline -Winvalid-pch -Wlong-long -Wmissing-braces 
        -Wmissing-field-initializers -Wmissing-format-attribute 
        -Wmissing-include-dirs -Wmissing-noreturn -Wpacked  -Wpadded -Wparentheses
        -Wpointer-arith -Wredundant-decls -Wreturn-type -Wsequence-point  -Wshadow 
        -Wsign-compare  -Wstack-protector -Wstrict-aliasing -Wstrict-aliasing=2 
        -Wswitch  -Wswitch-default -Wswitch-enum -Wtrigraphs  -Wuninitialized 
        -Wunknown-pragmas  -Wunreachable-code -Wunused -Wunused-function  
        -Wunused-label  -Wunused-parameter -Wunused-value  -Wunused-variable  
        -Wvariadic-macros -Wvolatile-register-var  -Wwrite-strings
    )
    add_flags( WARNING_FLAGS
        -Wno-padded -Wno-aggregate-return -Wno-inline -Wno-long-long
    )
    if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
        add_flags( WARNING_FLAGS -Wno-stack-protector)
    elseif (${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
        add_flags( WARNING_FLAGS
            -Weverything -Wno-c++98-compat 
            -Wno-c++98-compat-pedantic -Wno-newline-eof)
    endif()
endif()

################################################################################
#                          Environment Configuration
################################################################################

if ( WIN32 )
    message(FATAL_ERROR "Windows not supported")
elseif(CYGWIN)
    add_flags(CXX_FLAGS -Wno-missing-include-dirs -U__STRICT_ANSI__)
endif()

################################################################################
#                       Enviroment Variables
################################################################################
if (DEFINED ENV{CXXFLAGS})
    config_message(STATUS "Configuring with CXXFLAGS: $ENV{CXXFLAGS}")
endif()

if (DEFINED ENV{LDFLAGS})
    config_message(STATUS "Configuring with LDFLAGS: $ENV{LDFLAGS}")
endif()

