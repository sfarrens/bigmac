cmake_minimum_required(VERSION 3.0)
project(BigMac)

# Enable OpenMP for Clang
set(OpenMP_INCLUDE_PATH "/usr/local/include")
set(OpenMP_LIB_PATH "/usr/local/lib")
set(OpenMP_CXX_FLAGS "-Xpreprocessor -fopenmp -lomp")
set(OpenMP_CXX_LIB_NAMES "omp")
set(OpenMP_CXX_LIBRARIES "${OpenMP_LIB_PATH}/libomp.dylib")
include_directories(${OpenMP_INCLUDE_PATH})
link_directories(${OpenMP_LIB_PATH})
if(USE_FFTW)
  set(FFTW_OMP_FLAGS "-lomp")
  set(FFTW_CXX_FLAGS "-Xpreprocessor -fopenmp")
endif(USE_FFTW)

message(STATUS "OpenMP_CXX_FLAGS ${OpenMP_CXX_FLAGS}")

# Set CXX FLAGS
set(CMAKE_CXX_FLAGS "${OpenMP_CXX_FLAGS}")


set(CPP_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(SOURCE_LIST hello_world)

foreach(program ${SOURCE_LIST})
	add_executable(${program} ${CPP_SOURCE_DIR}/${program}.cpp)
endforeach(program)

INSTALL(TARGETS ${SOURCES} DESTINATION bin)
