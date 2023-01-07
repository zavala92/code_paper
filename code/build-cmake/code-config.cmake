if(NOT code_FOUND)
# Whether this module is installed or not
set(code_INSTALLED OFF)

# Settings specific to the module

# Package initialization
# Set prefix to source dir
set(PACKAGE_PREFIX_DIR /home/zavala68/mydune/code)
macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

#report other information
set_and_check(code_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(code_INCLUDE_DIRS "/home/zavala68/mydune/code")
set(code_CXX_FLAGS "-std=c++17 ")
set(code_CXX_FLAGS_DEBUG "-g")
set(code_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(code_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(code_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG")
set(code_DEPENDS "dune-common;dune-istl;dune-uggrid;dune-geometry;dune-localfunctions;dune-grid;dune-typetree;dune-functions;dune-foamgrid;dune-vtk;dune-curvedgeometry;dune-curvedgrid;dune-gmsh4")
set(code_SUGGESTS "")
set(code_MODULE_PATH "/home/zavala68/mydune/code/cmake/modules")
set(code_LIBRARIES "")

# Lines that are set by the CMake build system via the variable DUNE_CUSTOM_PKG_CONFIG_SECTION


#import the target
if(code_LIBRARIES)
  get_filename_component(_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)
  include("${_dir}/code-targets.cmake")
endif()
endif()
