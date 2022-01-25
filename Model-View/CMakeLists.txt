cmake_minimum_required(VERSION 3.16)
project(Model-View LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_PREFIX_PATH "/home/avatar/Qt/6.2.2/gcc_64")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Qml)
find_package(Qt6 COMPONENTS Quick)

qt_add_executable(Model-View
		main.cpp
		Model-View.qrc
		)

target_link_libraries(Model-View PUBLIC
		Qt::Core
		Qt::Gui
		Qt::Qml
		Qt::Quick
		)

