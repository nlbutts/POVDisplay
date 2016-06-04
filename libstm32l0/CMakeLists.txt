####
# Specify the minimum CMake version
####
cmake_minimum_required(VERSION 3.4)

####
# Define this target
####
set(THIS stm32l0)

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
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Inc/)
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Drivers/CMSIS/Device/ST/STM32L0xx/Include/)
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Drivers/CMSIS/Include/)
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Drivers/STM32L0xx_HAL_Driver/Inc/)

target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc/)
target_include_directories(${THIS} PUBLIC ${CMAKE_CURRENT_LIST_DIR}/Middlewares/ST/STM32_USB_Device_Library/Core/Inc/)
