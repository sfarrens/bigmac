[![bigmac](https://img.shields.io/github/v/release/sfarrens/bigmac?label=BigMac&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABGdBTUEAALGPC%2FxhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAeGVYSWZNTQAqAAAACAAFARIAAwAAAAEAAQAAARoABQAAAAEAAABKARsABQAAAAEAAABSASgAAwAAAAEAAgAAh2kABAAAAAEAAABaAAAAAAAAAEgAAAABAAAASAAAAAEAAqACAAQAAAABAAAADqADAAQAAAABAAAADgAAAAABAtxLAAAACXBIWXMAAAsTAAALEwEAmpwYAAACZmlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS40LjAiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgICAgICAgICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICAgICA8dGlmZjpSZXNvbHV0aW9uVW5pdD4yPC90aWZmOlJlc29sdXRpb25Vbml0PgogICAgICAgICA8ZXhpZjpDb2xvclNwYWNlPjE8L2V4aWY6Q29sb3JTcGFjZT4KICAgICAgICAgPGV4aWY6UGl4ZWxYRGltZW5zaW9uPjUwPC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgICAgPGV4aWY6UGl4ZWxZRGltZW5zaW9uPjUwPC9leGlmOlBpeGVsWURpbWVuc2lvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24%2BCiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE%2BCrh6Oa8AAAI%2BSURBVCgVhVLPaxNBFH7zY7tpkmKp2UgrwSrShkSNxYpFRXJqNVVQJBWpF1E8Fjx5HfwTPFXoQemtlYKKetCSFAsiQpHSVBQ1LWKlJK3Nj26y2d0ZZ7bkUhQHHvvt%2B7733rezD8GuMzWVJmkjjqCQEwBpAGPZw2hk2t0l3XkVApBgDP%2BVlEkmOaVp8h5QCYRATgBYenrrDOdiiGhaBDgHV6AfRPDX8csTbxXf1KImENLikt7xWNPwKKVUClQ3aUC44EiTtu284D7zWmJocltROJtlRHVaJIF77UEyum3adrlSU%2BGUq3WnVKlbrmtLBa%2F43aKjtOpQgKwHWnTS3XBsIMgFDkiTo6RWcL%2Bvhdp2feHYlUfXlVB9K0KMU5jz6mD%2BTW7tUCwCWtCHdIJBI0g24BxhFzcweq9ULx9c0FNjzFKYFnKGdykHOtu6a7MfYD1sgRMMQbXhhxbNxbptQ22xdFqJU2OvLAaAZXBsxAvezZZa%2FT87zw9Ab%2FQonOvX4XbqCwyeNPFhw8f7Lx5JzI%2BPTMpaQxXJSYisJlfwShb49KnPN2qrjT5zK2CVKyG0WQnzfGEfLzptIles1rO%2Fv58whxtdhVlrZo4BpUZs5%2F%2Fd7I1O9NT2DuOqHb7z6xkMlqPgJw48QV%2FhftdZGgl2rCda3fFlKIOq8WwyJn0zaeHbwz35%2FMKlmY1PxwcC%2B0PSGrwz1zautvd8PGjEnqO%2Bu1tNreK8w8S%2F1%2B2%2FGrktKJNJ0mQGqFp2FQqrnOKaDdTzD77QAxggF14iAAAAAElFTkSuQmCC)](https://github.com/sfarrens/bigmac)
[![macos-mojave](https://img.shields.io/badge/macos-mojave-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Mojave)
[![macos-catalina](https://img.shields.io/badge/macos-catalina-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Catalina)
[![macos-big-sur](https://img.shields.io/badge/macos-bigsur-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Big_Sur)
[![macos-big-sur](https://img.shields.io/badge/macos-monterey-brightgreen.svg)](https://en.wikipedia.org/wiki/MacOS_Monterey)
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
--         - macOS Version: 12.6
--         - Chip: Apple M1 Max
--         - Darwin Version: 21.6.0
--         - XCode Version: 14.0
--         - Homebrew Version: 3.6.6
--         - libomp Version: 15.0.3
--         - Compiler: Clang
--         - Compiler Version: 14.0.0.14000029
--         - Which CC: /usr/bin/clang
--         - Which CXX: /usr/bin/clang++
-- BigMac -> Setting OpenMP variables for Clang
--         - BigMac_CPPFLAGS -Xclang -fopenmp
--         - BigMac_OPENMP_CFLAGS -lomp
--         - OpenMP_INCLUDE_PATH /opt/homebrew/opt/libomp/include
--         - OpenMP_LIB_PATH /opt/homebrew/opt/libomp/lib
--         - OpenMP_C_FLAGS -Xclang -fopenmp -lomp
--         - OpenMP_CXX_FLAGS -Xclang -fopenmp -lomp
--         - OpenMP_C_LIB_NAMES omp
--         - OpenMP_CXX_LIB_NAMES omp
--         - OpenMP_C_LIBRARIES /opt/homebrew/opt/libomp/lib/libomp.dylib
--         - OpenMP_CXX_LIBRARIES /opt/homebrew/opt/libomp/lib/libomp.dylib
--         - OpenMP_omp_LIBRARY /opt/homebrew/opt/libomp/lib/libomp.dylib
--         - OpenMP_C_VERSION 15.0.3
--         - OpenMP_CXX_VERSION 15.0.3
```

### BigMac Variables

- `BigMac_MACOS` : macOS version
- `BigMac_CHIP` : Apple chip type
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

## Badge

Copy and paste the following in your project `README.md` to show your support for BigMac.

```markdown
[![bigmac](https://img.shields.io/github/v/release/sfarrens/bigmac?label=BigMac&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABGdBTUEAALGPC%2FxhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAeGVYSWZNTQAqAAAACAAFARIAAwAAAAEAAQAAARoABQAAAAEAAABKARsABQAAAAEAAABSASgAAwAAAAEAAgAAh2kABAAAAAEAAABaAAAAAAAAAEgAAAABAAAASAAAAAEAAqACAAQAAAABAAAADqADAAQAAAABAAAADgAAAAABAtxLAAAACXBIWXMAAAsTAAALEwEAmpwYAAACZmlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS40LjAiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgICAgICAgICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICAgICA8dGlmZjpSZXNvbHV0aW9uVW5pdD4yPC90aWZmOlJlc29sdXRpb25Vbml0PgogICAgICAgICA8ZXhpZjpDb2xvclNwYWNlPjE8L2V4aWY6Q29sb3JTcGFjZT4KICAgICAgICAgPGV4aWY6UGl4ZWxYRGltZW5zaW9uPjUwPC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgICAgPGV4aWY6UGl4ZWxZRGltZW5zaW9uPjUwPC9leGlmOlBpeGVsWURpbWVuc2lvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24%2BCiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE%2BCrh6Oa8AAAI%2BSURBVCgVhVLPaxNBFH7zY7tpkmKp2UgrwSrShkSNxYpFRXJqNVVQJBWpF1E8Fjx5HfwTPFXoQemtlYKKetCSFAsiQpHSVBQ1LWKlJK3Nj26y2d0ZZ7bkUhQHHvvt%2B7733rezD8GuMzWVJmkjjqCQEwBpAGPZw2hk2t0l3XkVApBgDP%2BVlEkmOaVp8h5QCYRATgBYenrrDOdiiGhaBDgHV6AfRPDX8csTbxXf1KImENLikt7xWNPwKKVUClQ3aUC44EiTtu284D7zWmJocltROJtlRHVaJIF77UEyum3adrlSU%2BGUq3WnVKlbrmtLBa%2F43aKjtOpQgKwHWnTS3XBsIMgFDkiTo6RWcL%2Bvhdp2feHYlUfXlVB9K0KMU5jz6mD%2BTW7tUCwCWtCHdIJBI0g24BxhFzcweq9ULx9c0FNjzFKYFnKGdykHOtu6a7MfYD1sgRMMQbXhhxbNxbptQ22xdFqJU2OvLAaAZXBsxAvezZZa%2FT87zw9Ab%2FQonOvX4XbqCwyeNPFhw8f7Lx5JzI%2BPTMpaQxXJSYisJlfwShb49KnPN2qrjT5zK2CVKyG0WQnzfGEfLzptIles1rO%2Fv58whxtdhVlrZo4BpUZs5%2F%2Fd7I1O9NT2DuOqHb7z6xkMlqPgJw48QV%2FhftdZGgl2rCda3fFlKIOq8WwyJn0zaeHbwz35%2FMKlmY1PxwcC%2B0PSGrwz1zautvd8PGjEnqO%2Bu1tNreK8w8S%2F1%2B2%2FGrktKJNJ0mQGqFp2FQqrnOKaDdTzD77QAxggF14iAAAAAElFTkSuQmCC)](https://github.com/sfarrens/bigmac)
```
