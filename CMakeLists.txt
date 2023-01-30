cmake_minimum_required(VERSION 3.8)

project ("Cartography")

file (GLOB SOURCES 
    "src/*.cpp")

# full path from root directory
include(~/vcpkg/scripts/buildsystems/vcpkg.cmake)

find_package(Crow CONFIG REQUIRED)

add_executable ("${PROJECT_NAME}"
    ${SOURCES})
    
target_link_libraries("${PROJECT_NAME}" PUBLIC Crow::Crow)

target_compile_features ("${PROJECT_NAME}" PRIVATE cxx_std_17)
target_compile_options ("${PROJECT_NAME}" PRIVATE -Wall -Wextra -Wpedantic)
