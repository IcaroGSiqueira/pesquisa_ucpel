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

# Include any dependencies generated for this target.
include CMakeFiles/webm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webm.dir/flags.make

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o: ../third_party/libwebm/common/hdr_util.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/common/hdr_util.cc

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/common/hdr_util.cc > CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.i

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/common/hdr_util.cc -o CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.s

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o


CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o: ../third_party/libwebm/mkvmuxer/mkvmuxer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxer.cc

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxer.cc > CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.i

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxer.cc -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.s

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o


CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o: ../third_party/libwebm/mkvmuxer/mkvmuxerutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc > CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.i

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.s

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o


CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o: ../third_party/libwebm/mkvmuxer/mkvwriter.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvwriter.cc

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvwriter.cc > CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.i

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvmuxer/mkvwriter.cc -o CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.s

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o


CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o: ../third_party/libwebm/mkvparser/mkvparser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvparser.cc

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvparser.cc > CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.i

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvparser.cc -o CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.s

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o


CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o: CMakeFiles/webm.dir/flags.make
CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o: ../third_party/libwebm/mkvparser/mkvreader.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o -c /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvreader.cc

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvreader.cc > CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.i

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/third_party/libwebm/mkvparser/mkvreader.cc -o CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.s

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.requires:

.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.requires

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.provides: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.requires
	$(MAKE) -f CMakeFiles/webm.dir/build.make CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.provides.build
.PHONY : CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.provides

CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.provides.build: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o


webm: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o
webm: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o
webm: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o
webm: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o
webm: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o
webm: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o
webm: CMakeFiles/webm.dir/build.make

.PHONY : webm

# Rule to build all files generated by this target.
CMakeFiles/webm.dir/build: webm

.PHONY : CMakeFiles/webm.dir/build

CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o.requires
CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o.requires
CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o.requires
CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o.requires
CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o.requires
CMakeFiles/webm.dir/requires: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o.requires

.PHONY : CMakeFiles/webm.dir/requires

CMakeFiles/webm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webm.dir/clean

CMakeFiles/webm.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webm.dir/depend

