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
CMAKE_SOURCE_DIR = /home/icaro/pesquisa_ucpel/vtm_5.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/icaro/pesquisa_ucpel/vtm_5.0/build

# Include any dependencies generated for this target.
include source/Lib/Utilities/CMakeFiles/Utilities.dir/depend.make

# Include the progress variables for this target.
include source/Lib/Utilities/CMakeFiles/Utilities.dir/progress.make

# Include the compile flags for this target's objects.
include source/Lib/Utilities/CMakeFiles/Utilities.dir/flags.make

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o: source/Lib/Utilities/CMakeFiles/Utilities.dir/flags.make
source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o: ../source/Lib/Utilities/ColourRemapping.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Utilities.dir/ColourRemapping.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/ColourRemapping.cpp

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Utilities.dir/ColourRemapping.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/ColourRemapping.cpp > CMakeFiles/Utilities.dir/ColourRemapping.cpp.i

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Utilities.dir/ColourRemapping.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/ColourRemapping.cpp -o CMakeFiles/Utilities.dir/ColourRemapping.cpp.s

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.requires:

.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.requires

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.provides: source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.requires
	$(MAKE) -f source/Lib/Utilities/CMakeFiles/Utilities.dir/build.make source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.provides.build
.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.provides

source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.provides.build: source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o


source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o: source/Lib/Utilities/CMakeFiles/Utilities.dir/flags.make
source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o: ../source/Lib/Utilities/VideoIOYuv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/VideoIOYuv.cpp

source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Utilities.dir/VideoIOYuv.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/VideoIOYuv.cpp > CMakeFiles/Utilities.dir/VideoIOYuv.cpp.i

source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Utilities.dir/VideoIOYuv.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/VideoIOYuv.cpp -o CMakeFiles/Utilities.dir/VideoIOYuv.cpp.s

source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.requires:

.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.requires

source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.provides: source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.requires
	$(MAKE) -f source/Lib/Utilities/CMakeFiles/Utilities.dir/build.make source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.provides.build
.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.provides

source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.provides.build: source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o


source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o: source/Lib/Utilities/CMakeFiles/Utilities.dir/flags.make
source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o: ../source/Lib/Utilities/program_options_lite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Utilities.dir/program_options_lite.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/program_options_lite.cpp

source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Utilities.dir/program_options_lite.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/program_options_lite.cpp > CMakeFiles/Utilities.dir/program_options_lite.cpp.i

source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Utilities.dir/program_options_lite.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities/program_options_lite.cpp -o CMakeFiles/Utilities.dir/program_options_lite.cpp.s

source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.requires:

.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.requires

source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.provides: source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.requires
	$(MAKE) -f source/Lib/Utilities/CMakeFiles/Utilities.dir/build.make source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.provides.build
.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.provides

source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.provides.build: source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o


# Object files for target Utilities
Utilities_OBJECTS = \
"CMakeFiles/Utilities.dir/ColourRemapping.cpp.o" \
"CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o" \
"CMakeFiles/Utilities.dir/program_options_lite.cpp.o"

# External object files for target Utilities
Utilities_EXTERNAL_OBJECTS =

../lib/umake/gcc-7.4/x86_64/release/libUtilities.a: source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libUtilities.a: source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libUtilities.a: source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libUtilities.a: source/Lib/Utilities/CMakeFiles/Utilities.dir/build.make
../lib/umake/gcc-7.4/x86_64/release/libUtilities.a: source/Lib/Utilities/CMakeFiles/Utilities.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../../../lib/umake/gcc-7.4/x86_64/release/libUtilities.a"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && $(CMAKE_COMMAND) -P CMakeFiles/Utilities.dir/cmake_clean_target.cmake
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Utilities.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/Lib/Utilities/CMakeFiles/Utilities.dir/build: ../lib/umake/gcc-7.4/x86_64/release/libUtilities.a

.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/build

source/Lib/Utilities/CMakeFiles/Utilities.dir/requires: source/Lib/Utilities/CMakeFiles/Utilities.dir/ColourRemapping.cpp.o.requires
source/Lib/Utilities/CMakeFiles/Utilities.dir/requires: source/Lib/Utilities/CMakeFiles/Utilities.dir/VideoIOYuv.cpp.o.requires
source/Lib/Utilities/CMakeFiles/Utilities.dir/requires: source/Lib/Utilities/CMakeFiles/Utilities.dir/program_options_lite.cpp.o.requires

.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/requires

source/Lib/Utilities/CMakeFiles/Utilities.dir/clean:
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities && $(CMAKE_COMMAND) -P CMakeFiles/Utilities.dir/cmake_clean.cmake
.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/clean

source/Lib/Utilities/CMakeFiles/Utilities.dir/depend:
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/vtm_5.0 /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/Utilities /home/icaro/pesquisa_ucpel/vtm_5.0/build /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/Utilities/CMakeFiles/Utilities.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/Lib/Utilities/CMakeFiles/Utilities.dir/depend

