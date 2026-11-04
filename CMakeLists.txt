cmake_minimum_required(VERSION 3.10)
project(HelloWorld)

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "gcc")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(hw hw.cpp)

target_link_libraries(hw stdc++)