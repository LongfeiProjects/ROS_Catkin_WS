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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/longfei/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longfei/catkin_ws/build

# Include any dependencies generated for this target.
include tactilesensors/CMakeFiles/PollData.dir/depend.make

# Include the progress variables for this target.
include tactilesensors/CMakeFiles/PollData.dir/progress.make

# Include the compile flags for this target's objects.
include tactilesensors/CMakeFiles/PollData.dir/flags.make

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o: tactilesensors/CMakeFiles/PollData.dir/flags.make
tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o: /home/longfei/catkin_ws/src/tactilesensors/src/PollData.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/longfei/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o"
	cd /home/longfei/catkin_ws/build/tactilesensors && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PollData.dir/src/PollData.cpp.o -c /home/longfei/catkin_ws/src/tactilesensors/src/PollData.cpp

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PollData.dir/src/PollData.cpp.i"
	cd /home/longfei/catkin_ws/build/tactilesensors && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/longfei/catkin_ws/src/tactilesensors/src/PollData.cpp > CMakeFiles/PollData.dir/src/PollData.cpp.i

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PollData.dir/src/PollData.cpp.s"
	cd /home/longfei/catkin_ws/build/tactilesensors && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/longfei/catkin_ws/src/tactilesensors/src/PollData.cpp -o CMakeFiles/PollData.dir/src/PollData.cpp.s

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.requires:
.PHONY : tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.requires

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.provides: tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.requires
	$(MAKE) -f tactilesensors/CMakeFiles/PollData.dir/build.make tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.provides.build
.PHONY : tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.provides

tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.provides.build: tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o

# Object files for target PollData
PollData_OBJECTS = \
"CMakeFiles/PollData.dir/src/PollData.cpp.o"

# External object files for target PollData
PollData_EXTERNAL_OBJECTS =

/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: tactilesensors/CMakeFiles/PollData.dir/build.make
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/libroscpp.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_signals-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_filesystem-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/librosconsole.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/librosconsole_log4cxx.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/librosconsole_backend_interface.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/liblog4cxx.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_regex-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/libxmlrpcpp.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/libroscpp_serialization.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/librostime.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_date_time-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_system-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/libboost_thread-mt.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /usr/lib/i386-linux-gnu/libpthread.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/libcpp_common.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: /opt/ros/hydro/lib/libconsole_bridge.so
/home/longfei/catkin_ws/devel/lib/tactilesensors/PollData: tactilesensors/CMakeFiles/PollData.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/longfei/catkin_ws/devel/lib/tactilesensors/PollData"
	cd /home/longfei/catkin_ws/build/tactilesensors && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PollData.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tactilesensors/CMakeFiles/PollData.dir/build: /home/longfei/catkin_ws/devel/lib/tactilesensors/PollData
.PHONY : tactilesensors/CMakeFiles/PollData.dir/build

tactilesensors/CMakeFiles/PollData.dir/requires: tactilesensors/CMakeFiles/PollData.dir/src/PollData.cpp.o.requires
.PHONY : tactilesensors/CMakeFiles/PollData.dir/requires

tactilesensors/CMakeFiles/PollData.dir/clean:
	cd /home/longfei/catkin_ws/build/tactilesensors && $(CMAKE_COMMAND) -P CMakeFiles/PollData.dir/cmake_clean.cmake
.PHONY : tactilesensors/CMakeFiles/PollData.dir/clean

tactilesensors/CMakeFiles/PollData.dir/depend:
	cd /home/longfei/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longfei/catkin_ws/src /home/longfei/catkin_ws/src/tactilesensors /home/longfei/catkin_ws/build /home/longfei/catkin_ws/build/tactilesensors /home/longfei/catkin_ws/build/tactilesensors/CMakeFiles/PollData.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tactilesensors/CMakeFiles/PollData.dir/depend

