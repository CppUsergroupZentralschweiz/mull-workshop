cmake_minimum_required(VERSION 3.14)

project(mull-workshop)

add_subdirectory(roman)
add_subdirectory(gilded_rose)

add_subdirectory(vendor)

add_library(settings INTERFACE)
target_compile_options(settings INTERFACE "-Wall" "-Werror" "-std=c++17")
