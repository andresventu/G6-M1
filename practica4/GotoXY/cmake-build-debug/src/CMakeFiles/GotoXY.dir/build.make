# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/andres/Descargas/clion-2021.2.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/andres/Descargas/clion-2021.2.1/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andres/robotica/G6-M1/practica4/GotoXY

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/GotoXY.dir/depend.make
# Include the progress variables for this target.
include src/CMakeFiles/GotoXY.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/GotoXY.dir/flags.make

src/CommonBehavior.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "BU ice=>h/cpp: Generating CommonBehavior.h and CommonBehavior.cpp from /home/andres/robotica/G6-M1/practica4/GotoXY/src/CommonBehavior.ice"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && slice2cpp --underscore /home/andres/robotica/G6-M1/practica4/GotoXY/src/CommonBehavior.ice -I/home/andres/robotica/G6-M1/practica4/GotoXY/src/ --output-dir .

src/CommonBehavior.h: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/CommonBehavior.h

src/DifferentialRobot.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "BU ice=>h/cpp: Generating DifferentialRobot.h and DifferentialRobot.cpp from /home/andres/robotica/G6-M1/practica4/GotoXY/src/DifferentialRobot.ice"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && slice2cpp --underscore /home/andres/robotica/G6-M1/practica4/GotoXY/src/DifferentialRobot.ice -I/home/andres/robotica/G6-M1/practica4/GotoXY/src/ --output-dir .

src/DifferentialRobot.h: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/DifferentialRobot.h

src/GenericBase.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "BU ice=>h/cpp: Generating GenericBase.h and GenericBase.cpp from /home/andres/robotica/G6-M1/practica4/GotoXY/src/GenericBase.ice"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && slice2cpp --underscore /home/andres/robotica/G6-M1/practica4/GotoXY/src/GenericBase.ice -I/home/andres/robotica/G6-M1/practica4/GotoXY/src/ --output-dir .

src/GenericBase.h: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/GenericBase.h

src/Laser.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "BU ice=>h/cpp: Generating Laser.h and Laser.cpp from /home/andres/robotica/G6-M1/practica4/GotoXY/src/Laser.ice"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && slice2cpp --underscore /home/andres/robotica/G6-M1/practica4/GotoXY/src/Laser.ice -I/home/andres/robotica/G6-M1/practica4/GotoXY/src/ --output-dir .

src/Laser.h: src/Laser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/Laser.h

src/ui_mainUI.h: ../src/mainUI.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating ui_mainUI.h"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/lib/qt5/bin/uic -o /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/ui_mainUI.h /home/andres/robotica/G6-M1/practica4/GotoXY/src/mainUI.ui

src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o: src/GotoXY_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GotoXY_autogen/mocs_compilation.cpp

src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GotoXY_autogen/mocs_compilation.cpp > CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.i

src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GotoXY_autogen/mocs_compilation.cpp -o CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.s

src/CMakeFiles/GotoXY.dir/specificworker.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/specificworker.cpp.o: ../src/specificworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/GotoXY.dir/specificworker.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/specificworker.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificworker.cpp

src/CMakeFiles/GotoXY.dir/specificworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/specificworker.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificworker.cpp > CMakeFiles/GotoXY.dir/specificworker.cpp.i

src/CMakeFiles/GotoXY.dir/specificworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/specificworker.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificworker.cpp -o CMakeFiles/GotoXY.dir/specificworker.cpp.s

src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.o: ../src/specificmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/specificmonitor.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificmonitor.cpp

src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/specificmonitor.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificmonitor.cpp > CMakeFiles/GotoXY.dir/specificmonitor.cpp.i

src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/specificmonitor.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/specificmonitor.cpp -o CMakeFiles/GotoXY.dir/specificmonitor.cpp.s

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o: /home/andres/robocomp/classes/rapplication/rapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o -c /home/andres/robocomp/classes/rapplication/rapplication.cpp

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robocomp/classes/rapplication/rapplication.cpp > CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.i

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robocomp/classes/rapplication/rapplication.cpp -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.s

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o: /home/andres/robocomp/classes/sigwatch/sigwatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o -c /home/andres/robocomp/classes/sigwatch/sigwatch.cpp

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robocomp/classes/sigwatch/sigwatch.cpp > CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.i

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robocomp/classes/sigwatch/sigwatch.cpp -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.s

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o: /home/andres/robocomp/classes/qlog/qlog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o -c /home/andres/robocomp/classes/qlog/qlog.cpp

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robocomp/classes/qlog/qlog.cpp > CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.i

src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robocomp/classes/qlog/qlog.cpp -o CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.s

src/CMakeFiles/GotoXY.dir/main.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/GotoXY.dir/main.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/main.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/main.cpp

src/CMakeFiles/GotoXY.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/main.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/main.cpp > CMakeFiles/GotoXY.dir/main.cpp.i

src/CMakeFiles/GotoXY.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/main.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/main.cpp -o CMakeFiles/GotoXY.dir/main.cpp.s

src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.o: ../src/genericmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/genericmonitor.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericmonitor.cpp

src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/genericmonitor.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericmonitor.cpp > CMakeFiles/GotoXY.dir/genericmonitor.cpp.i

src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/genericmonitor.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericmonitor.cpp -o CMakeFiles/GotoXY.dir/genericmonitor.cpp.s

src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o: ../src/commonbehaviorI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/commonbehaviorI.cpp

src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/commonbehaviorI.cpp > CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.i

src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/commonbehaviorI.cpp -o CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.s

src/CMakeFiles/GotoXY.dir/genericworker.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/genericworker.cpp.o: ../src/genericworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/GotoXY.dir/genericworker.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/genericworker.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericworker.cpp

src/CMakeFiles/GotoXY.dir/genericworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/genericworker.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericworker.cpp > CMakeFiles/GotoXY.dir/genericworker.cpp.i

src/CMakeFiles/GotoXY.dir/genericworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/genericworker.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/src/genericworker.cpp -o CMakeFiles/GotoXY.dir/genericworker.cpp.s

src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/CommonBehavior.cpp

src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/CommonBehavior.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/CommonBehavior.cpp > CMakeFiles/GotoXY.dir/CommonBehavior.cpp.i

src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/CommonBehavior.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/CommonBehavior.cpp -o CMakeFiles/GotoXY.dir/CommonBehavior.cpp.s

src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/DifferentialRobot.cpp

src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/DifferentialRobot.cpp > CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.i

src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/DifferentialRobot.cpp -o CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.s

src/CMakeFiles/GotoXY.dir/GenericBase.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/GenericBase.cpp.o: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/GotoXY.dir/GenericBase.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/GenericBase.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GenericBase.cpp

src/CMakeFiles/GotoXY.dir/GenericBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/GenericBase.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GenericBase.cpp > CMakeFiles/GotoXY.dir/GenericBase.cpp.i

src/CMakeFiles/GotoXY.dir/GenericBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/GenericBase.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/GenericBase.cpp -o CMakeFiles/GotoXY.dir/GenericBase.cpp.s

src/CMakeFiles/GotoXY.dir/Laser.cpp.o: src/CMakeFiles/GotoXY.dir/flags.make
src/CMakeFiles/GotoXY.dir/Laser.cpp.o: src/Laser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/GotoXY.dir/Laser.cpp.o"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GotoXY.dir/Laser.cpp.o -c /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/Laser.cpp

src/CMakeFiles/GotoXY.dir/Laser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GotoXY.dir/Laser.cpp.i"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/Laser.cpp > CMakeFiles/GotoXY.dir/Laser.cpp.i

src/CMakeFiles/GotoXY.dir/Laser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GotoXY.dir/Laser.cpp.s"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/Laser.cpp -o CMakeFiles/GotoXY.dir/Laser.cpp.s

# Object files for target GotoXY
GotoXY_OBJECTS = \
"CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/GotoXY.dir/specificworker.cpp.o" \
"CMakeFiles/GotoXY.dir/specificmonitor.cpp.o" \
"CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o" \
"CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o" \
"CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o" \
"CMakeFiles/GotoXY.dir/main.cpp.o" \
"CMakeFiles/GotoXY.dir/genericmonitor.cpp.o" \
"CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o" \
"CMakeFiles/GotoXY.dir/genericworker.cpp.o" \
"CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o" \
"CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o" \
"CMakeFiles/GotoXY.dir/GenericBase.cpp.o" \
"CMakeFiles/GotoXY.dir/Laser.cpp.o"

# External object files for target GotoXY
GotoXY_EXTERNAL_OBJECTS =

../bin/GotoXY: src/CMakeFiles/GotoXY.dir/GotoXY_autogen/mocs_compilation.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/specificworker.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/specificmonitor.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/rapplication/rapplication.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/sigwatch/sigwatch.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/home/andres/robocomp/classes/qlog/qlog.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/main.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/genericmonitor.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/commonbehaviorI.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/genericworker.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/CommonBehavior.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/DifferentialRobot.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/GenericBase.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/Laser.cpp.o
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/build.make
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5XmlPatterns.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libIce++11.so
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libIceStorm++11.so
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libIce.so
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libIceStorm.so
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
../bin/GotoXY: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
../bin/GotoXY: src/CMakeFiles/GotoXY.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable ../../bin/GotoXY"
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GotoXY.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/GotoXY.dir/build: ../bin/GotoXY
.PHONY : src/CMakeFiles/GotoXY.dir/build

src/CMakeFiles/GotoXY.dir/clean:
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/GotoXY.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/GotoXY.dir/clean

src/CMakeFiles/GotoXY.dir/depend: src/CommonBehavior.cpp
src/CMakeFiles/GotoXY.dir/depend: src/CommonBehavior.h
src/CMakeFiles/GotoXY.dir/depend: src/DifferentialRobot.cpp
src/CMakeFiles/GotoXY.dir/depend: src/DifferentialRobot.h
src/CMakeFiles/GotoXY.dir/depend: src/GenericBase.cpp
src/CMakeFiles/GotoXY.dir/depend: src/GenericBase.h
src/CMakeFiles/GotoXY.dir/depend: src/Laser.cpp
src/CMakeFiles/GotoXY.dir/depend: src/Laser.h
src/CMakeFiles/GotoXY.dir/depend: src/ui_mainUI.h
	cd /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andres/robotica/G6-M1/practica4/GotoXY /home/andres/robotica/G6-M1/practica4/GotoXY/src /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src /home/andres/robotica/G6-M1/practica4/GotoXY/cmake-build-debug/src/CMakeFiles/GotoXY.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/GotoXY.dir/depend

