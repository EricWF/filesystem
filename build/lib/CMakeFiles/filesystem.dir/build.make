# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eric/workspace/filesystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eric/workspace/filesystem/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/filesystem.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/filesystem.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/filesystem.dir/flags.make

# Object files for target filesystem
filesystem_OBJECTS =

# External object files for target filesystem
filesystem_EXTERNAL_OBJECTS = \
"/home/eric/workspace/filesystem/build/lib/CMakeFiles/ObjLib.dir/__/src/test.cpp.o"

../lib/libfilesystem.so: lib/CMakeFiles/ObjLib.dir/__/src/test.cpp.o
../lib/libfilesystem.so: lib/CMakeFiles/filesystem.dir/build.make
../lib/libfilesystem.so: lib/CMakeFiles/filesystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libfilesystem.so"
	cd /home/eric/workspace/filesystem/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filesystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/filesystem.dir/build: ../lib/libfilesystem.so
.PHONY : lib/CMakeFiles/filesystem.dir/build

lib/CMakeFiles/filesystem.dir/requires:
.PHONY : lib/CMakeFiles/filesystem.dir/requires

lib/CMakeFiles/filesystem.dir/clean:
	cd /home/eric/workspace/filesystem/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/filesystem.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/filesystem.dir/clean

lib/CMakeFiles/filesystem.dir/depend:
	cd /home/eric/workspace/filesystem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eric/workspace/filesystem /home/eric/workspace/filesystem/lib /home/eric/workspace/filesystem/build /home/eric/workspace/filesystem/build/lib /home/eric/workspace/filesystem/build/lib/CMakeFiles/filesystem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/filesystem.dir/depend
