cmake_minimum_required(VERSION 3.14)

project(QtPresentation LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick Multimedia REQUIRED)

add_executable(QtPresentation
    main.cpp
    Julia.h
    Julia.cpp
    qml.qrc
)

target_compile_definitions(QtPresentation PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(QtPresentation PRIVATE Qt5::Core Qt5::Quick Qt5::Multimedia)
