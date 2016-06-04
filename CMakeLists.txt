project(app)
cmake_minimum_required(VERSION 3.4)

include(ExternalProject)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall -O3")
#set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g3 -Wall -fmessage-length=0 -fdata-sections -fno-rtti -ffunction-sections -fno-exceptions")
#set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -g3 -Wall -fmessage-length=0 -fdata-sections -fno-rtti -ffunction-sections -fno-exceptions")
set(CMAKE_BUILD_TYPE DEBUG)
#set(LD_FLAGS "-Xlinker --gc-sections -fno-rtti -fno-exceptions")

# Options
option(BUILD_UT "Builds the unit tests" ON)
set(HSE_CRYSTAL_HZ 25000000)

# Specify compile options
if ((${CMAKE_SYSTEM_NAME} MATCHES Generic) AND (${CMAKE_SYSTEM_PROCESSOR} MATCHES arm_baremetal))
    set(BUILD_UT OFF)

    set(COMMON_FLAGS -mcpu=cortex-m0plus -mthumb -gdwarf-2 -fdata-sections -ffunction-sections)
    add_compile_options(${COMMON_FLAGS})
    add_definitions(-DUSE_STDPERIPH_DRIVER)
    add_definitions(-DHSE_VALUE=${HSE_CRYSTAL_HZ})
    add_definitions(-DSTM32L052xx)

    set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-fno-rtti -fno-exceptions")

    set(CMAKE_EXE_LINKER_FLAGS "-Xlinker --gc-sections -fno-rtti -fno-exceptions")

    # List all of the sub directories you want to build here
    add_subdirectory(libStringUI)
    add_subdirectory(libstm32l0)
    add_subdirectory(POVBase)
endif ((${CMAKE_SYSTEM_NAME} MATCHES Generic) AND (${CMAKE_SYSTEM_PROCESSOR} MATCHES arm_baremetal))

#include(CMakeLists_unittesting.txt)

#Pass date and time into the code
if (DEFINED ${FW_VERSION})
    add_definitions(-DFW_PARTNUMBER=${FW_PARTNUMBER})
    add_definitions(-DFW_VERSION=${FW_VERSION})
    add_definitions(-DFW_HGID=${FW_HGID})
endif (DEFINED ${FW_VERSION})

# List all of the sub directories you want to build here

##DEBUG PRINTS##
Message( STATUS "CMAKE_SYSTEM_PROCESSOR:" ${CMAKE_SYSTEM_PROCESSOR})
Message( STATUS "CMAKE_SYSTEM_NAME:" ${CMAKE_SYSTEM_NAME})
Message("CMAKE_BUILD_TYPE : " ${CMAKE_BUILD_TYPE})