[![macos-mojave](https://img.shields.io/badge/macos-mojave-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Mojave)
[![macos-catalina](https://img.shields.io/badge/macos-catalina-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Catalina)
[![License: MIT](https://img.shields.io/github/license/sfarrens/bigmac)](https://github.com/sfarrens/bigmac/blob/master/LICENSE)

<img src="images/bigmac_logo_red.png" height=250>

# BigMac
BigMac contains a series of CMake variables that facilitate compiling C/C++ code on macOS using the default clang compiler.

## Installation

### Requirements

BigMac requires the following:

- [XCode](https://developer.apple.com/xcode/) : The default IDE for macOS. Needed for developer libraries. Should already be installed, but you may need to update it.
- Command Line Tools : These are the default macOS compilers *etc.*. You can install these by running the following in a terminal.

  ```bash
  $ xcode-select --install
  ```

- [Homebrew](https://brew.sh/) : Package manager for macOS. You can install this by running the following in a terminal.

  ```bash
  $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  ```

  If you already have Homebrew installed. Be sure to make sure it is up to date.

  ```bash
  $ brew update
  ```


### Homebrew

BigMac can be installed using Homebrew as follows.

```bash
$ brew tap sfarrens/sf
$ brew install bigmac
```

This is recommended as it will also install all of the required dependencies.

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

If you install BigMac manually, you will also need to manage all dependencies yourself.

## Use

To take advantage of BigMac simply include the following in your CMake project.

```cmake
find_package(BigMac REQUIRED)
```

This will provide all of the variables described below. Additionally, by providing the flag `--log-level=VERBOSE`, you can get a report of your system setup. *e.g.*

```bash
$ cmake --log-level=VERBOSE
```

This should provide something like the following.

```
-- BigMac Status
--         - macOS Version: 10.15.6
--         - Darwin Version: 19.6.0
--         - XCode Version: 11.6
--         - Homebrew Version: 2.4.12
--         - libomp Version: 10.0.1
--         - Compiler: AppleClang
--         - Compiler Version: 11.0.3.11030032
--         - Which CC: /usr/bin/clang
--         - Which CXX: /usr/bin/clang++
-- BigMac -> Setting OpenMP variables for AppleClang
--         - BigMac_CPPFLAGS -Xpreprocessor -fopenmp
--         - BigMac_OPENMP_CFLAGS -lomp
--         - OpenMP_INCLUDE_PATH /usr/local/include
--         - OpenMP_LIB_PATH /usr/local/lib
--         - OpenMP_CXX_FLAGS -Xpreprocessor -fopenmp -lomp
--         - OpenMP_CXX_LIB_NAMES omp
--         - OpenMP_CXX_LIBRARIES /usr/local/lib/libomp.dylib
```

### BigMac Variables

- `BigMac_MACOS` : macOS version
- `BigMac_DARWIN` : Darwin version
- `BigMac_XCODE` : XCode version
- `BigMac_BREW` : Homebrew version
- `BigMac_LIBOMP` : libomp version

### OpenMP Variables

- `BigMac_CPPFLAGS` : `CPPFLAGS` for external projects (*e.g.* FFTW, NFFT).
- `BigMac_OPENMP_CFLAGS` : `OPENMP_CFLAGS` for external projects (*e.g.* FFTW, NFFT).
- `OpenMP_INCLUDE_PATH` : Path to OpenMP headers.
- `OpenMP_LIB_PATH` : Path to OpenMP Libraries.
- `OpenMP_C_FLAGS` : OpenMP compiler flags for C, separated by spaces.
- `OpenMP_CXX_FLAGS` : OpenMP compiler flags for C++, separated by spaces.
- `OpenMP_C_LIB_NAMES` : List of libraries for OpenMP programs for C.
- `OpenMP_CXX_LIB_NAMES` : List of libraries for OpenMP programs for C++.
- `OpenMP_C_LIBRARIES` : A list of libraries needed to link with OpenMP code written in C.
- `OpenMP_CXX_LIBRARIES` : A list of libraries needed to link with OpenMP code written in C++.
- `OpenMP_omp_LIBRARY` : Location of the individual libraries needed for OpenMP support.
- `OpenMP_C_VERSION` : OpenMP version implemented by the C compiler.
- `OpenMP_CXX_VERSION` : OpenMP version implemented by the C++ compiler.

### External Project Flags
- `BigMac_FFTW` : Flags needed to build [FFTW](http://fftw.org/) as an external project.
- `BigMac_NFFT` : Flags needed to build [NFFT](https://github.com/NFFT/nfft) as an external project.

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

### FFTW Example

```cmake
# Download and build FFTW
ExternalProject_Add(fftw
    URL               http://www.fftw.org/fftw-3.3.8.tar.gz
    URL_HASH          8aac833c943d8e90d51b697b27d4384d
    CONFIGURE_COMMAND ./configure CC=${CMAKE_C_COMPILER} CXX=${CMAKE_CXX_COMPILER} ${BigMac_FFTW}
    BUILD_COMMAND     make
    INSTALL_COMMAND   make install
)
```
