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
include CMakeFiles/noise_model.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/noise_model.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/noise_model.dir/flags.make

CMakeFiles/noise_model.dir/examples/noise_model.c.o: CMakeFiles/noise_model.dir/flags.make
CMakeFiles/noise_model.dir/examples/noise_model.c.o: ../examples/noise_model.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/noise_model.dir/examples/noise_model.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/noise_model.dir/examples/noise_model.c.o   -c /home/icaro/pesquisa_ucpel/aom/examples/noise_model.c

CMakeFiles/noise_model.dir/examples/noise_model.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/noise_model.dir/examples/noise_model.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/icaro/pesquisa_ucpel/aom/examples/noise_model.c > CMakeFiles/noise_model.dir/examples/noise_model.c.i

CMakeFiles/noise_model.dir/examples/noise_model.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/noise_model.dir/examples/noise_model.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/icaro/pesquisa_ucpel/aom/examples/noise_model.c -o CMakeFiles/noise_model.dir/examples/noise_model.c.s

CMakeFiles/noise_model.dir/examples/noise_model.c.o.requires:

.PHONY : CMakeFiles/noise_model.dir/examples/noise_model.c.o.requires

CMakeFiles/noise_model.dir/examples/noise_model.c.o.provides: CMakeFiles/noise_model.dir/examples/noise_model.c.o.requires
	$(MAKE) -f CMakeFiles/noise_model.dir/build.make CMakeFiles/noise_model.dir/examples/noise_model.c.o.provides.build
.PHONY : CMakeFiles/noise_model.dir/examples/noise_model.c.o.provides

CMakeFiles/noise_model.dir/examples/noise_model.c.o.provides.build: CMakeFiles/noise_model.dir/examples/noise_model.c.o


# Object files for target noise_model
noise_model_OBJECTS = \
"CMakeFiles/noise_model.dir/examples/noise_model.c.o"

# External object files for target noise_model
noise_model_EXTERNAL_OBJECTS = \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/args.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/av1_config.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/md5_utils.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/tools_common.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/rawenc.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_common_app_util.dir/common/y4menc.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/common/ivfenc.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/common/video_writer.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/common/warnings.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/common/y4minput.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/examples/encoder_util.c.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/aom_encoder_app_util.dir/common/webmenc.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/cpu_id.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/planar_functions.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_any.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_common.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_gcc.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_mips.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon64.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/row_win.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_any.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_common.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_gcc.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_mips.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon64.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/yuv.dir/third_party/libyuv/source/scale_win.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o" \
"/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o"

examples/noise_model: CMakeFiles/noise_model.dir/examples/noise_model.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/args.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/av1_config.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/md5_utils.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/tools_common.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/rawenc.c.o
examples/noise_model: CMakeFiles/aom_common_app_util.dir/common/y4menc.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/common/ivfenc.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/common/video_writer.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/common/warnings.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/common/y4minput.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/examples/encoder_util.c.o
examples/noise_model: CMakeFiles/aom_encoder_app_util.dir/common/webmenc.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/cpu_id.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/planar_functions.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_any.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_common.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_gcc.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_mips.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_neon64.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/row_win.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_any.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_common.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_gcc.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_mips.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_neon64.cc.o
examples/noise_model: CMakeFiles/yuv.dir/third_party/libyuv/source/scale_win.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/common/hdr_util.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxer.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvmuxerutil.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/mkvmuxer/mkvwriter.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvparser.cc.o
examples/noise_model: CMakeFiles/webm.dir/third_party/libwebm/mkvparser/mkvreader.cc.o
examples/noise_model: CMakeFiles/noise_model.dir/build.make
examples/noise_model: libaom.a
examples/noise_model: CMakeFiles/noise_model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/icaro/pesquisa_ucpel/aom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable examples/noise_model"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/noise_model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/noise_model.dir/build: examples/noise_model

.PHONY : CMakeFiles/noise_model.dir/build

CMakeFiles/noise_model.dir/requires: CMakeFiles/noise_model.dir/examples/noise_model.c.o.requires

.PHONY : CMakeFiles/noise_model.dir/requires

CMakeFiles/noise_model.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/noise_model.dir/cmake_clean.cmake
.PHONY : CMakeFiles/noise_model.dir/clean

CMakeFiles/noise_model.dir/depend:
	cd /home/icaro/pesquisa_ucpel/aom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build /home/icaro/pesquisa_ucpel/aom/build/CMakeFiles/noise_model.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/noise_model.dir/depend
