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

# Utility rule file for testdata_477.

# Include the progress variables for this target.
include CMakeFiles/testdata_477.dir/progress.make

CMakeFiles/testdata_477:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/home/icaro/pesquisa_ucpel/aom/build" -DAOM_ROOT="/home/icaro/pesquisa_ucpel/aom" -DAOM_TEST_FILE="av1-1-b10-00-quantizer-48.ivf.md5" -DAOM_TEST_CHECKSUM=b468de2c09fca5a6b2bb7a20bab4afd8d192c31d -P /home/icaro/pesquisa_ucpel/aom/test/test_data_download_worker.cmake

testdata_477: CMakeFiles/testdata_477
testdata_477: CMakeFiles/testdata_477.dir/build.make

.PHONY : testdata_477

# Rule to build all files generated by this target.
CMakeFiles/testdata_477.dir/build: testdata_477

.PHONY : CMakeFiles/testdata_477.dir/build

CMakeFiles/testdata_477.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_477.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_477.dir/clean

CMakeFiles/testdata_477.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/testdata_477.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_477.dir/depend

