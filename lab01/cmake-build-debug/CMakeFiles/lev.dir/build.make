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
CMAKE_COMMAND = /home/kotyarich/snap/firefox/common/Загрузки/CLion-2018.3.4/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/kotyarich/snap/firefox/common/Загрузки/CLion-2018.3.4/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kotyarich/Dev/bmstu/aa/lab01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lev.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lev.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lev.dir/flags.make

CMakeFiles/lev.dir/main.cpp.o: CMakeFiles/lev.dir/flags.make
CMakeFiles/lev.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lev.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lev.dir/main.cpp.o -c /home/kotyarich/Dev/bmstu/aa/lab01/main.cpp

CMakeFiles/lev.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lev.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kotyarich/Dev/bmstu/aa/lab01/main.cpp > CMakeFiles/lev.dir/main.cpp.i

CMakeFiles/lev.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lev.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kotyarich/Dev/bmstu/aa/lab01/main.cpp -o CMakeFiles/lev.dir/main.cpp.s

CMakeFiles/lev.dir/levenshtein_dist.cpp.o: CMakeFiles/lev.dir/flags.make
CMakeFiles/lev.dir/levenshtein_dist.cpp.o: ../levenshtein_dist.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lev.dir/levenshtein_dist.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lev.dir/levenshtein_dist.cpp.o -c /home/kotyarich/Dev/bmstu/aa/lab01/levenshtein_dist.cpp

CMakeFiles/lev.dir/levenshtein_dist.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lev.dir/levenshtein_dist.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kotyarich/Dev/bmstu/aa/lab01/levenshtein_dist.cpp > CMakeFiles/lev.dir/levenshtein_dist.cpp.i

CMakeFiles/lev.dir/levenshtein_dist.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lev.dir/levenshtein_dist.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kotyarich/Dev/bmstu/aa/lab01/levenshtein_dist.cpp -o CMakeFiles/lev.dir/levenshtein_dist.cpp.s

# Object files for target lev
lev_OBJECTS = \
"CMakeFiles/lev.dir/main.cpp.o" \
"CMakeFiles/lev.dir/levenshtein_dist.cpp.o"

# External object files for target lev
lev_EXTERNAL_OBJECTS =

lev: CMakeFiles/lev.dir/main.cpp.o
lev: CMakeFiles/lev.dir/levenshtein_dist.cpp.o
lev: CMakeFiles/lev.dir/build.make
lev: CMakeFiles/lev.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lev"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lev.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lev.dir/build: lev

.PHONY : CMakeFiles/lev.dir/build

CMakeFiles/lev.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lev.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lev.dir/clean

CMakeFiles/lev.dir/depend:
	cd /home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kotyarich/Dev/bmstu/aa/lab01 /home/kotyarich/Dev/bmstu/aa/lab01 /home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug /home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug /home/kotyarich/Dev/bmstu/aa/lab01/cmake-build-debug/CMakeFiles/lev.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lev.dir/depend

