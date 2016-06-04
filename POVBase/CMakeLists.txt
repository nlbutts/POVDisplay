####
# Specify the minimum CMake version
####
cmake_minimum_required(VERSION 3.4)

####
# Define this target
####
set(THIS application)

####
# Select files that should be compiled for this target
####
file(GLOB_RECURSE CPPSRC ${CMAKE_CURRENT_LIST_DIR}/*.cpp)
file(GLOB_RECURSE CSRC   ${CMAKE_CURRENT_LIST_DIR}/*.c)
file(GLOB_RECURSE ASRC   ${CMAKE_CURRENT_LIST_DIR}/*.S)

####
# Enable assembly support for the C startup code
####
enable_language(ASM)

####
# Add an executable
####
add_executable(${THIS}.elf ${CPPSRC} ${CSRC} ${ASRC})

####
# Add libraries, linker flags, etc.
####
target_link_libraries(${THIS}.elf StringUI stm32l0)
target_link_libraries(${THIS}.elf "-T ${CMAKE_CURRENT_LIST_DIR}/linker/stm32_flash.ld -L${CMAKE_HOME_DIRECTORY}")

####
# Include directories for this target
####
target_include_directories(${THIS}.elf PRIVATE ${CMAKE_CURRENT_LIST_DIR}/include)

# Build the HEX file
add_custom_target(${THIS}.hex ALL ${OC} -O ihex ${THIS}.elf ${THIS}.hex DEPENDS ${THIS}.elf)

# Add the hex CRC into the app code
#add_custom_target(${THIS}_crc.hex ALL ${SREC} ${THIS}.hex -intel -offset -0x08080000 -exclusive-length-l-e 0x00000004 -fill 0x00 0x00000008 0x00000200 -crc32_little_endian 0x00000000 -o ${THIS}_crc.hex -intel DEPENDS ${THIS}.hex)

# Add the binary CRC into the app code
#add_custom_target(${THIS}_crc.bin ALL ${SREC} ${THIS}_crc.hex -intel -o ${THIS}_crc.bin -binary DEPENDS ${THIS}_crc.hex)
