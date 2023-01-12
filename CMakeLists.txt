cmake_minimum_required(VERSION 3.20)

project ("Cartography")

file (GLOB SOURCES 
    "src/*.cpp")
add_executable ("${PROJECT_NAME}"
    ${SOURCES})
    
target_compile_features ("${PROJECT_NAME}" PRIVATE cxx_std_23)
target_compile_options ("${PROJECT_NAME}" PRIVATE -Wall -Wextra -Wpedantic)
