cmake_minimum_required(VERSION 3.10)
project(CppProProject)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)

add_executable(sum src/main.cpp src/add.cpp)
