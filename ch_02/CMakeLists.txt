cmake_minimum_required(VERSION 3.16)
project(ch_02 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_PREFIX_PATH "/home/avatar/Qt/6.2.2/gcc_64")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Qml)
find_package(Qt6 COMPONENTS Quick)

qt_add_executable(ch_02
	main.cpp
	Test.h
	Test.cpp
	ch_02.qrc
	res/qml/main.qml
	)

target_link_libraries(ch_02 PUBLIC
	Qt::Core
	Qt::Gui
	Qt::Qml
	Qt::Quick
	)
