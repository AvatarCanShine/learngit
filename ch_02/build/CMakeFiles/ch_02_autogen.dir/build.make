# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/avatar/Code/HjjDemo/learngit/ch_02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/avatar/Code/HjjDemo/learngit/ch_02/build

# Utility rule file for ch_02_autogen.

# Include the progress variables for this target.
include CMakeFiles/ch_02_autogen.dir/progress.make

CMakeFiles/ch_02_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/avatar/Code/HjjDemo/learngit/ch_02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target ch_02"
	/usr/bin/cmake -E cmake_autogen /home/avatar/Code/HjjDemo/learngit/ch_02/build/CMakeFiles/ch_02_autogen.dir/AutogenInfo.json ""

ch_02_autogen: CMakeFiles/ch_02_autogen
ch_02_autogen: CMakeFiles/ch_02_autogen.dir/build.make

.PHONY : ch_02_autogen

# Rule to build all files generated by this target.
CMakeFiles/ch_02_autogen.dir/build: ch_02_autogen

.PHONY : CMakeFiles/ch_02_autogen.dir/build

CMakeFiles/ch_02_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ch_02_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ch_02_autogen.dir/clean

CMakeFiles/ch_02_autogen.dir/depend:
	cd /home/avatar/Code/HjjDemo/learngit/ch_02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/avatar/Code/HjjDemo/learngit/ch_02 /home/avatar/Code/HjjDemo/learngit/ch_02 /home/avatar/Code/HjjDemo/learngit/ch_02/build /home/avatar/Code/HjjDemo/learngit/ch_02/build /home/avatar/Code/HjjDemo/learngit/ch_02/build/CMakeFiles/ch_02_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ch_02_autogen.dir/depend

