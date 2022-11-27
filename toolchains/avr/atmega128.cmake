cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0011 NEW)

set(AVERSIVE_TOOLCHAIN_TARGET "atmega128")
include("${CMAKE_CURRENT_LIST_DIR}/atmega.cmake")

set(AVERSIVE_TOOLCHAIN_ATMEGA128 1 CACHE STRING "")

set(ATMEGA128_FLAGS "-D__AVR_ATmega128__")
set(ATMEGA128_FLAGS "${ATMEGA128_FLAGS} -DAVERSIVE_TOOLCHAIN_ATMEGA128")

set(CMAKE_C_FLAGS      "${CMAKE_C_FLAGS} ${ATMEGA128_FLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS    "${CMAKE_CXX_FLAGS} ${ATMEGA128_FLAGS}" CACHE STRING "")
set(CMAKE_ASM_FLAGS    "${CMAKE_ASM_FLAGS} ${ATMEGA128_FLAGS}" CACHE STRING "")

unset(ATMEGA128_FLAGS)