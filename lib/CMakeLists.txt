# Author: Eric Fiselier

################################################################################
##                               Objects
################################################################################
set(OBJECT_FLAGS "${CXX_FLAGS} ${WARNING_FLAGS}")
if (NOT CYGWIN)
    add_flags(OBJECT_FLAGS -fPIC)
endif()

# Compile source files into "Object Libraries"
file(GLOB LIBRARY_SRC ../src/*.cpp)
add_library(ObjLib OBJECT ${LIBRARY_SRC})
set_target_properties(ObjLib PROPERTIES COMPILE_FLAGS "${OBJECT_FLAGS}")

################################################################################
##                             Libraries
################################################################################

find_package( Threads REQUIRED )

################################################################################
add_library(filesystem SHARED $<TARGET_OBJECTS:ObjLib>)
target_link_libraries(filesystem ${CMAKE_THREAD_LIBS_INIT})
set_target_properties(filesystem PROPERTIES
                           LIBRARY_OUTPUT_DIRECTORY ${FILESYSTEM_ROOT_PATH}/lib)
