####
# Specify the minimum CMake version
####
cmake_minimum_required(VERSION 3.4)

####
# Define this target
####
set(THIS StringUI)

####
# Select files that should be compiled for this target
####
file(GLOB_RECURSE CPPSRC ${CMAKE_CURRENT_LIST_DIR}/*.cpp)
file(GLOB_RECURSE CSRC   ${CMAKE_CURRENT_LIST_DIR}/*.c)
file(GLOB_RECURSE ASRC   ${CMAKE_CURRENT_LIST_DIR}/*.S)

####
# Add an executable
####
add_library(${THIS} ${CPPSRC} ${CSRC} ${ASRC})

####
# Add include directories
####
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include)
