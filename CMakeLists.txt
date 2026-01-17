cmake_minimum_required(VERSION 3.10)

project(XeChat)

set(CMAKE_CXX_STANDARD 17)

#构建服务器框架
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Xten)

find_package(yaml-cpp REQUIRED)

include_directories(${YAML_CPP_INCLUDE_DIRS})
#头文件路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Xten/src)


add_library(XeChat SHARED
    XeChat/myModule.cpp
)
set_target_properties(XeChat PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib
)

set_target_properties(XeChat PROPERTIES
    OUTPUT_NAME "XeChat"
)