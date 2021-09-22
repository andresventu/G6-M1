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
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alumno/robocomp/components/G6-M1/practica2n

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alumno/robocomp/components/G6-M1/practica2n

# Include any dependencies generated for this target.
include src/CMakeFiles/chocachoca.dir/depend.make
# Include the progress variables for this target.
include src/CMakeFiles/chocachoca.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/chocachoca.dir/flags.make

src/CommonBehavior.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "BU ice=>h/cpp: Generating CommonBehavior.h and CommonBehavior.cpp from /home/alumno/robocomp/components/G6-M1/practica2n/src/CommonBehavior.ice"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && slice2cpp --underscore /home/alumno/robocomp/components/G6-M1/practica2n/src/CommonBehavior.ice -I/home/alumno/robocomp/components/G6-M1/practica2n/src/ --output-dir .

src/CommonBehavior.h: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/CommonBehavior.h

src/DifferentialRobot.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "BU ice=>h/cpp: Generating DifferentialRobot.h and DifferentialRobot.cpp from /home/alumno/robocomp/components/G6-M1/practica2n/src/DifferentialRobot.ice"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && slice2cpp --underscore /home/alumno/robocomp/components/G6-M1/practica2n/src/DifferentialRobot.ice -I/home/alumno/robocomp/components/G6-M1/practica2n/src/ --output-dir .

src/DifferentialRobot.h: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/DifferentialRobot.h

src/GenericBase.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "BU ice=>h/cpp: Generating GenericBase.h and GenericBase.cpp from /home/alumno/robocomp/components/G6-M1/practica2n/src/GenericBase.ice"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && slice2cpp --underscore /home/alumno/robocomp/components/G6-M1/practica2n/src/GenericBase.ice -I/home/alumno/robocomp/components/G6-M1/practica2n/src/ --output-dir .

src/GenericBase.h: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/GenericBase.h

src/Laser.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "BU ice=>h/cpp: Generating Laser.h and Laser.cpp from /home/alumno/robocomp/components/G6-M1/practica2n/src/Laser.ice"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && slice2cpp --underscore /home/alumno/robocomp/components/G6-M1/practica2n/src/Laser.ice -I/home/alumno/robocomp/components/G6-M1/practica2n/src/ --output-dir .

src/Laser.h: src/Laser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/Laser.h

src/ui_mainUI.h: src/mainUI.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating ui_mainUI.h"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/lib/qt5/bin/uic -o /home/alumno/robocomp/components/G6-M1/practica2n/src/ui_mainUI.h /home/alumno/robocomp/components/G6-M1/practica2n/src/mainUI.ui

src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o: src/chocachoca_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/chocachoca_autogen/mocs_compilation.cpp

src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/chocachoca_autogen/mocs_compilation.cpp > CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.i

src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/chocachoca_autogen/mocs_compilation.cpp -o CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.s

src/CMakeFiles/chocachoca.dir/specificworker.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/specificworker.cpp.o: src/specificworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/chocachoca.dir/specificworker.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/specificworker.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/specificworker.cpp

src/CMakeFiles/chocachoca.dir/specificworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/specificworker.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/specificworker.cpp > CMakeFiles/chocachoca.dir/specificworker.cpp.i

src/CMakeFiles/chocachoca.dir/specificworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/specificworker.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/specificworker.cpp -o CMakeFiles/chocachoca.dir/specificworker.cpp.s

src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.o: src/specificmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/specificmonitor.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/specificmonitor.cpp

src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/specificmonitor.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/specificmonitor.cpp > CMakeFiles/chocachoca.dir/specificmonitor.cpp.i

src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/specificmonitor.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/specificmonitor.cpp -o CMakeFiles/chocachoca.dir/specificmonitor.cpp.s

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o: /opt/robocomp/classes/rapplication/rapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o -c /opt/robocomp/classes/rapplication/rapplication.cpp

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/rapplication/rapplication.cpp > CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/rapplication/rapplication.cpp -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o: /opt/robocomp/classes/sigwatch/sigwatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o -c /opt/robocomp/classes/sigwatch/sigwatch.cpp

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/sigwatch/sigwatch.cpp > CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/sigwatch/sigwatch.cpp -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o: /opt/robocomp/classes/qlog/qlog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o -c /opt/robocomp/classes/qlog/qlog.cpp

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/qlog/qlog.cpp > CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.i

src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/qlog/qlog.cpp -o CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.s

src/CMakeFiles/chocachoca.dir/main.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/chocachoca.dir/main.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/main.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/main.cpp

src/CMakeFiles/chocachoca.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/main.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/main.cpp > CMakeFiles/chocachoca.dir/main.cpp.i

src/CMakeFiles/chocachoca.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/main.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/main.cpp -o CMakeFiles/chocachoca.dir/main.cpp.s

src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.o: src/genericmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/genericmonitor.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/genericmonitor.cpp

src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/genericmonitor.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/genericmonitor.cpp > CMakeFiles/chocachoca.dir/genericmonitor.cpp.i

src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/genericmonitor.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/genericmonitor.cpp -o CMakeFiles/chocachoca.dir/genericmonitor.cpp.s

src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o: src/commonbehaviorI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/commonbehaviorI.cpp

src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/commonbehaviorI.cpp > CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.i

src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/commonbehaviorI.cpp -o CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.s

src/CMakeFiles/chocachoca.dir/genericworker.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/genericworker.cpp.o: src/genericworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/chocachoca.dir/genericworker.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/genericworker.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/genericworker.cpp

src/CMakeFiles/chocachoca.dir/genericworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/genericworker.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/genericworker.cpp > CMakeFiles/chocachoca.dir/genericworker.cpp.i

src/CMakeFiles/chocachoca.dir/genericworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/genericworker.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/genericworker.cpp -o CMakeFiles/chocachoca.dir/genericworker.cpp.s

src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/CommonBehavior.cpp

src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/CommonBehavior.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/CommonBehavior.cpp > CMakeFiles/chocachoca.dir/CommonBehavior.cpp.i

src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/CommonBehavior.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/CommonBehavior.cpp -o CMakeFiles/chocachoca.dir/CommonBehavior.cpp.s

src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/DifferentialRobot.cpp

src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/DifferentialRobot.cpp > CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.i

src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/DifferentialRobot.cpp -o CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.s

src/CMakeFiles/chocachoca.dir/GenericBase.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/GenericBase.cpp.o: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/chocachoca.dir/GenericBase.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/GenericBase.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/GenericBase.cpp

src/CMakeFiles/chocachoca.dir/GenericBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/GenericBase.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/GenericBase.cpp > CMakeFiles/chocachoca.dir/GenericBase.cpp.i

src/CMakeFiles/chocachoca.dir/GenericBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/GenericBase.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/GenericBase.cpp -o CMakeFiles/chocachoca.dir/GenericBase.cpp.s

src/CMakeFiles/chocachoca.dir/Laser.cpp.o: src/CMakeFiles/chocachoca.dir/flags.make
src/CMakeFiles/chocachoca.dir/Laser.cpp.o: src/Laser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/chocachoca.dir/Laser.cpp.o"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca.dir/Laser.cpp.o -c /home/alumno/robocomp/components/G6-M1/practica2n/src/Laser.cpp

src/CMakeFiles/chocachoca.dir/Laser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca.dir/Laser.cpp.i"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alumno/robocomp/components/G6-M1/practica2n/src/Laser.cpp > CMakeFiles/chocachoca.dir/Laser.cpp.i

src/CMakeFiles/chocachoca.dir/Laser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca.dir/Laser.cpp.s"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alumno/robocomp/components/G6-M1/practica2n/src/Laser.cpp -o CMakeFiles/chocachoca.dir/Laser.cpp.s

# Object files for target chocachoca
chocachoca_OBJECTS = \
"CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/chocachoca.dir/specificworker.cpp.o" \
"CMakeFiles/chocachoca.dir/specificmonitor.cpp.o" \
"CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o" \
"CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o" \
"CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o" \
"CMakeFiles/chocachoca.dir/main.cpp.o" \
"CMakeFiles/chocachoca.dir/genericmonitor.cpp.o" \
"CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o" \
"CMakeFiles/chocachoca.dir/genericworker.cpp.o" \
"CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o" \
"CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o" \
"CMakeFiles/chocachoca.dir/GenericBase.cpp.o" \
"CMakeFiles/chocachoca.dir/Laser.cpp.o"

# External object files for target chocachoca
chocachoca_EXTERNAL_OBJECTS =

bin/chocachoca: src/CMakeFiles/chocachoca.dir/chocachoca_autogen/mocs_compilation.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/specificworker.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/specificmonitor.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/opt/robocomp/classes/qlog/qlog.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/main.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/genericmonitor.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/commonbehaviorI.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/genericworker.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/CommonBehavior.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/DifferentialRobot.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/GenericBase.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/Laser.cpp.o
bin/chocachoca: src/CMakeFiles/chocachoca.dir/build.make
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5XmlPatterns.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libIce++11.so
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libIceStorm++11.so
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libIce.so
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libIceStorm.so
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
bin/chocachoca: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
bin/chocachoca: src/CMakeFiles/chocachoca.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alumno/robocomp/components/G6-M1/practica2n/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable ../bin/chocachoca"
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chocachoca.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/chocachoca.dir/build: bin/chocachoca
.PHONY : src/CMakeFiles/chocachoca.dir/build

src/CMakeFiles/chocachoca.dir/clean:
	cd /home/alumno/robocomp/components/G6-M1/practica2n/src && $(CMAKE_COMMAND) -P CMakeFiles/chocachoca.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/chocachoca.dir/clean

src/CMakeFiles/chocachoca.dir/depend: src/CommonBehavior.cpp
src/CMakeFiles/chocachoca.dir/depend: src/CommonBehavior.h
src/CMakeFiles/chocachoca.dir/depend: src/DifferentialRobot.cpp
src/CMakeFiles/chocachoca.dir/depend: src/DifferentialRobot.h
src/CMakeFiles/chocachoca.dir/depend: src/GenericBase.cpp
src/CMakeFiles/chocachoca.dir/depend: src/GenericBase.h
src/CMakeFiles/chocachoca.dir/depend: src/Laser.cpp
src/CMakeFiles/chocachoca.dir/depend: src/Laser.h
src/CMakeFiles/chocachoca.dir/depend: src/ui_mainUI.h
	cd /home/alumno/robocomp/components/G6-M1/practica2n && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alumno/robocomp/components/G6-M1/practica2n /home/alumno/robocomp/components/G6-M1/practica2n/src /home/alumno/robocomp/components/G6-M1/practica2n /home/alumno/robocomp/components/G6-M1/practica2n/src /home/alumno/robocomp/components/G6-M1/practica2n/src/CMakeFiles/chocachoca.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/chocachoca.dir/depend

