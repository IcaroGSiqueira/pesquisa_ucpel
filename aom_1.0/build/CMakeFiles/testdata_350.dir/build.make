# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/icaro/pesquisa_ucpel/aom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/icaro/pesquisa_ucpel/aom/build

# Utility rule file for testdata_350.

# Include the progress variables for this target.
include CMakeFiles/testdata_350.dir/progress.make

CMakeFiles/testdata_350:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/home/icaro/pesquisa_ucpel/aom/build" -DAOM_ROOT="/home/icaro/pesquisa_ucpel/aom" -DAOM_TEST_FILE="av1-1-b8-01-size-198x224.ivf" -DAOM_TEST_CHECKSUM=640f8fda7ade8f2850e2275a9f5e233e33a0ba8d -P /home/icaro/pesquisa_ucpel/aom/test/test_data_download_worker.cmake

testdata_350: CMakeFiles/testdata_350
testdata_350: CMakeFiles/testdata_350.dir/build.make

.PHONY : testdata_350

# Rule to build all files generated by this target.
CMakeFiles/testdata_350.dir/build: testdata_350

.PHONY : CMakeFiles/testdata_350.dir/build

CMakeFiles/testdata_350.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_350.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_350.dir/clean

CMakeFiles/testdata_350.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/testdata_350.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_350.dir/depend

