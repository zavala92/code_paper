# code_paper
Code to produce the results in the paper "A note on the rate of convergence of integration schemes for closed surfaces" by Gentian Zavalani and Elima Shehu


# "A note on the rate of convergence of integration schemes for closed surfaces"
Find the source at 

## Preparing the Sources
This project is developed in the [DUNE](https://dune-project.org) framework.

You need to install the following dependencies, all with the branch `releases/2.7`

- [dune-common](https://gitlab.dune-project.org/core/dune-common)
- [dune-geometry](https://gitlab.dune-project.org/core/dune-geometry)
- [dune-localfunctions](https://gitlab.dune-project.org/core/dune-localfunctions)
- [dune-istl](https://gitlab.dune-project.org/core/dune-istl)
- [dune-grid](https://gitlab.dune-project.org/core/dune-grid)
- [dune-typetree](https://gitlab.dune-project.org/staging/dune-typetree)
- [dune-functions](https://gitlab.dune-project.org/staging/dune-typetree)
- [dune-foamgrid](https://gitlab.dune-project.org/extensions/dune-foamgrid)
- [dune-vtk](https://gitlab.dune-project.org/extensions/dune-vtk)
- [dune-curvedgeometry](https://gitlab.mn.tu-dresden.de/iwr/dune-curvedgeometry)
- [dune-curvedgrid](https://gitlab.mn.tu-dresden.de/iwr/dune-curvedgrid)

Put all these modules together with this project into a common base directory, called `my_dune`
in the following. This module is assumed to be in a subdirectory called `code`.

As additional external dependencies we have

- CMake >= 3.13
- PkgConfig
- SuiteSparse

that can be installed as packages in your Linux distribution.


## Compiling the Code
If these preliminaries are met, you should run

```bash
cd my_dune
dunecontrol cmake -DCMAKE_BUILD_TYPE=Release
dunecontrol make
```

to configure and compile all modules, including this one. All CMake and make output is
put into the build directory `build-cmake/`.

For further information about the installation process, see also the official documentation
https://dune-project.org/doc/installation/ of DUNE.


## Run the Examples
In order to execute the code to run the numerical examples, run

```bash
cd my_dune/code
./build-cmake/src/sphere_example
```

```bash
cd my_dune/code
./build-cmake/src/torus_example
```
