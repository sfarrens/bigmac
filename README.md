# BigMac
BigMac contains a series of CMake variables that facilitate compiling C/C++ code on macOS using the default clang compiler.

## Installation

BigMac can be installed using [Homebrew](https://brew.sh/) as follows.

```bash
$ brew tap sfarrens/sf
$ brew install bigmac
```

## Use

To take advantage of BigMac simply include the following in your CMake project.

```cmake
find_package(BigMac REQUIRED)
```

Then use variables provided.

### BigMac Variables

#### OpenMP Variables

- `OpenMP_INCLUDE_PATH` : Path to OpenMP headers
- `OpenMP_LIB_PATH` : Path to OpenMP Libraries
- `OpenMP_CXX_FLAGS` : OpenMP Flags
- `OpenMP_CXX_LIB_NAMES` : OpenMP Library Names
- `OpenMP_CXX_LIBRARIES` : OpenMP Libraries

#### FFTW Variables

- `FFTW_OMP_FLAGS` : OpenMP flags for building FFTW
- `FFTW_CXX_FLAGS` : FFTW flags

### Hello World Example

For the following OpenMP Hello World example.

```cpp
#include <stdio.h>
#include <omp.h>

int main(int argc, char** argv){

    #pragma omp parallel
    {
      printf("Hello from process: %d\n", omp_get_thread_num());
    }

    return 0;
}
```

You would include the following in your CMake project.

```cmake
find_package(BigMac REQUIRED)

set(CMAKE_CXX_FLAGS ${OpenMP_CXX_FLAGS})
add_executable(hello_world src/hello_world.cpp)
```
