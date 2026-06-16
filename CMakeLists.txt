cmake_minimum_required(VERSION 3.28)

project(BCU_Firmware C)

enable_testing()

set(CMAKE_C_STANDARD 11)

add_executable(
    bcu_firmware
    src/bcu_brake_control.c
    src/brake_logic.c
    src/abs_controller.c
)

target_include_directories(
    bcu_firmware
    PRIVATE include
)

add_executable(
    bcu_test_host
    test/test_main.c
    src/brake_logic.c
)

add_test(
    NAME BrakeTests
    COMMAND bcu_test_host
)
