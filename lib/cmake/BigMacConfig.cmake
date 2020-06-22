# Enable OpenMP for Clang
message(STATUS "Setting OpenMP variables for ${CMAKE_CXX_COMPILER_ID}")
set(OpenMP_INCLUDE_PATH "/usr/local/include")
set(OpenMP_LIB_PATH "/usr/local/lib")
set(OpenMP_CXX_FLAGS "-Xpreprocessor -fopenmp -lomp")
set(OpenMP_CXX_LIB_NAMES "omp")
set(OpenMP_CXX_LIBRARIES "${OpenMP_LIB_PATH}/libomp.dylib")
include_directories(${OpenMP_INCLUDE_PATH})
link_directories(${OpenMP_LIB_PATH})
