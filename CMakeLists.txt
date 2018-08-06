cmake_minimum_required(VERSION 3.6)
project(ulibc VERSION 0.1 LANGUAGES ASM C CXX)

add_library(ulibc
  src/ctype.cpp) 

target_compile_options(ulibc
  PUBLIC
    -nostdlib
    -nostdlibinc
  PRIVATE
    -Wall -Wextra -pedantic)

target_link_libraries(ulibc ulibc-start)

target_include_directories(ulibc
  PUBLIC
    "include"
  PRIVATE
    "src")

add_subdirectory(platform)
add_subdirectory(test)
