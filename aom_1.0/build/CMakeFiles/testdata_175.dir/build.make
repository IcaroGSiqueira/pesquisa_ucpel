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

# Utility rule file for testdata_175.

# Include the progress variables for this target.
include CMakeFiles/testdata_175.dir/progress.make

CMakeFiles/testdata_175:
	/usr/bin/cmake -DAOM_CONFIG_DIR="/home/icaro/pesquisa_ucpel/aom/build" -DAOM_ROOT="/home/icaro/pesquisa_ucpel/aom" -DAOM_TEST_FILE="av1-1-b8-00-quantizer-61.ivf.md5" -DAOM_TEST_CHECKSUM=66fc4f729c5915aa19939d1b6e28e5b398e747bb -P /home/icaro/pesquisa_ucpel/aom/test/test_data_download_worker.cmake

testdata_175: CMakeFiles/testdata_175
testdata_175: CMakeFiles/testdata_175.dir/build.make

.PHONY : testdata_175

# Rule to build all files generated by this target.
CMakeFiles/testdata_175.dir/build: testdata_175

.PHONY : CMakeFiles/testdata_175.dir/build

CMakeFiles/testdata_175.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testdata_175.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testdata_175.dir/clean

CMakeFiles/testdata_175.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/testdata_175.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testdata_175.dir/depend
