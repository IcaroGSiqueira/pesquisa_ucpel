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
include source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/depend.make

# Include the progress variables for this target.
include source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/progress.make

# Include the compile flags for this target's objects.
include source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o: ../source/Lib/DecoderLib/AnnexBread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/AnnexBread.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/AnnexBread.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/AnnexBread.cpp > CMakeFiles/DecoderLib.dir/AnnexBread.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/AnnexBread.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/AnnexBread.cpp -o CMakeFiles/DecoderLib.dir/AnnexBread.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o: ../source/Lib/DecoderLib/BinDecoder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/BinDecoder.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/BinDecoder.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/BinDecoder.cpp > CMakeFiles/DecoderLib.dir/BinDecoder.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/BinDecoder.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/BinDecoder.cpp -o CMakeFiles/DecoderLib.dir/BinDecoder.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o: ../source/Lib/DecoderLib/CABACReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/CABACReader.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/CABACReader.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/CABACReader.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/CABACReader.cpp > CMakeFiles/DecoderLib.dir/CABACReader.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/CABACReader.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/CABACReader.cpp -o CMakeFiles/DecoderLib.dir/CABACReader.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o: ../source/Lib/DecoderLib/DecCu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/DecCu.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecCu.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/DecCu.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecCu.cpp > CMakeFiles/DecoderLib.dir/DecCu.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/DecCu.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecCu.cpp -o CMakeFiles/DecoderLib.dir/DecCu.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o: ../source/Lib/DecoderLib/DecLib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/DecLib.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecLib.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/DecLib.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecLib.cpp > CMakeFiles/DecoderLib.dir/DecLib.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/DecLib.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecLib.cpp -o CMakeFiles/DecoderLib.dir/DecLib.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o: ../source/Lib/DecoderLib/DecSlice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/DecSlice.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecSlice.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/DecSlice.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecSlice.cpp > CMakeFiles/DecoderLib.dir/DecSlice.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/DecSlice.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/DecSlice.cpp -o CMakeFiles/DecoderLib.dir/DecSlice.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o: ../source/Lib/DecoderLib/NALread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/NALread.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/NALread.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/NALread.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/NALread.cpp > CMakeFiles/DecoderLib.dir/NALread.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/NALread.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/NALread.cpp -o CMakeFiles/DecoderLib.dir/NALread.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o: ../source/Lib/DecoderLib/SEIread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/SEIread.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/SEIread.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/SEIread.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/SEIread.cpp > CMakeFiles/DecoderLib.dir/SEIread.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/SEIread.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/SEIread.cpp -o CMakeFiles/DecoderLib.dir/SEIread.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o


source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/flags.make
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o: ../source/Lib/DecoderLib/VLCReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DecoderLib.dir/VLCReader.cpp.o -c /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/VLCReader.cpp

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DecoderLib.dir/VLCReader.cpp.i"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/VLCReader.cpp > CMakeFiles/DecoderLib.dir/VLCReader.cpp.i

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DecoderLib.dir/VLCReader.cpp.s"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib/VLCReader.cpp -o CMakeFiles/DecoderLib.dir/VLCReader.cpp.s

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.requires:

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.provides: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.requires
	$(MAKE) -f source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.provides.build
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.provides

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.provides.build: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o


# Object files for target DecoderLib
DecoderLib_OBJECTS = \
"CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o" \
"CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o" \
"CMakeFiles/DecoderLib.dir/CABACReader.cpp.o" \
"CMakeFiles/DecoderLib.dir/DecCu.cpp.o" \
"CMakeFiles/DecoderLib.dir/DecLib.cpp.o" \
"CMakeFiles/DecoderLib.dir/DecSlice.cpp.o" \
"CMakeFiles/DecoderLib.dir/NALread.cpp.o" \
"CMakeFiles/DecoderLib.dir/SEIread.cpp.o" \
"CMakeFiles/DecoderLib.dir/VLCReader.cpp.o"

# External object files for target DecoderLib
DecoderLib_EXTERNAL_OBJECTS =

../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build.make
../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/icaro/pesquisa_ucpel/vtm_5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library ../../../../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a"
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && $(CMAKE_COMMAND) -P CMakeFiles/DecoderLib.dir/cmake_clean_target.cmake
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DecoderLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build: ../lib/umake/gcc-7.4/x86_64/release/libDecoderLib.a

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/build

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/AnnexBread.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/BinDecoder.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/CABACReader.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecCu.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecLib.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DecSlice.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/NALread.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/SEIread.cpp.o.requires
source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires: source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/VLCReader.cpp.o.requires

.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/requires

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/clean:
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib && $(CMAKE_COMMAND) -P CMakeFiles/DecoderLib.dir/cmake_clean.cmake
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/clean

source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/depend:
	cd /home/icaro/pesquisa_ucpel/vtm_5.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/vtm_5.0 /home/icaro/pesquisa_ucpel/vtm_5.0/source/Lib/DecoderLib /home/icaro/pesquisa_ucpel/vtm_5.0/build /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib /home/icaro/pesquisa_ucpel/vtm_5.0/build/source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/Lib/DecoderLib/CMakeFiles/DecoderLib.dir/depend

