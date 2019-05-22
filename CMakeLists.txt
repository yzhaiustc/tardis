cmake_minimum_required(VERSION 2.8)

project (main)
include_directories(/home/yzhai015/tardis/mklml/include/)
link_directories(/home/yzhai015/tardis/mklml/lib/)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -Wall -lpthread -lmklml_intel")
add_executable(mkl_test pthread.c utils.c)

target_link_libraries(mkl_test mklml_intel)