cmake_minimum_required(VERSION 3.16)
project(Controls LANGUAGES CXX)

#set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_PREFIX_PATH "/home/avatar/Qt/6.2.2/gcc_64")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Qml)
find_package(Qt6 COMPONENTS Quick)

qt_add_executable(Controls
		main.cpp
		Controls.qrc
		res/qml/main.qml
		)

target_link_libraries(Controls PUBLIC
		Qt::Core
		Qt::Gui
		Qt::Qml
		Qt::Quick
		)
