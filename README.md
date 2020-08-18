<img src="images/bigmac_logo_red.png" height=250>

# BigMac
BigMac contains a series of CMake variables that facilitate compiling C/C++ code on macOS using the default clang compiler.

## Installation

### Homebrew

BigMac can be installed using [Homebrew](https://brew.sh/) as follows.

```bash
$ brew tap sfarrens/sf
$ brew install bigmac
```

### From Source

BigMac can be installed manually as follows.

```bash
$ git clone https://github.com/sfarrens/bigmac.git
$ cd bigmac
$ mkdir build
$ cd build
$ cmake ..
$ make install
```

## Use

To take advantage of BigMac simply include the following in your CMake project.

```cmake
find_package(BigMac REQUIRED)
```

Then use variables provided.

### BigMac Variables

- `BigMac_CPPFLAGS` : `CPPFLAGS` for external projects (*e.g.* FFTW, NFFT).
- `BigMac_OPENMP_CFLAGS` : `OPENMP_CFLAGS` for external projects (*e.g.* FFTW, NFFT).

### OpenMP Variables

- `OpenMP_INCLUDE_PATH` : Path to OpenMP headers
- `OpenMP_LIB_PATH` : Path to OpenMP Libraries
- `OpenMP_CXX_FLAGS` : OpenMP Flags
- `OpenMP_CXX_LIB_NAMES` : OpenMP Library Names
- `OpenMP_CXX_LIBRARIES` : OpenMP Libraries

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
