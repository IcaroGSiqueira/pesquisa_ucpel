# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/icaro/pesquisa_ucpel/aom_1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/icaro/pesquisa_ucpel/aom_1.0/nbbuild

# Utility rule file for testdata_51.

# Include the progress variables for this target.
include CMakeFiles/testdata_51.dir/progress.make

CMakeFiles/testdata_51:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/home/icaro/pesquisa_ucpel/aom_1.0/nbbuild" -DAOM_ROOT="/home/icaro/pesquisa_ucpel/aom_1.0" -DAOM_TEST_FILE="niklas_640_480_30.yuv" -DAOM_TEST_CHECKSUM=70894878d916a599842d9ad0dcd24e10c13e5467 -P /home/icaro/pesquisa_ucpel/aom_1.0/test/test_data_download_worker.cmake

testdata_51: CMakeFiles/testdata_51
testdata_51: CMakeFiles/testdata_51.dir/build.make

.PHONY : testdata_51

# Rule to build all files generated by this target.
CMakeFiles/testdata_51.dir/build: testdata_51

.PHONY : CMakeFiles/testdata_51.dir/build

CMakeFiles/testdata_51.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_51.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_51.dir/clean

CMakeFiles/testdata_51.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom_1.0/nbbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom_1.0 /home/icaro/pesquisa_ucpel/aom_1.0 /home/icaro/pesquisa_ucpel/aom_1.0/nbbuild /home/icaro/pesquisa_ucpel/aom_1.0/nbbuild /home/icaro/pesquisa_ucpel/aom_1.0/nbbuild/CMakeFiles/testdata_51.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_51.dir/depend
