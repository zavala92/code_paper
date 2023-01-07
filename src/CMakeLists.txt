
macro(add_example NAME SOURCE)
  add_executable(${NAME} ${SOURCE})
  target_link_dune_default_libraries(${NAME})
  target_compile_definitions(${NAME} PRIVATE DUNE_GRID_PATH=\"${CMAKE_CURRENT_SOURCE_DIR}/grids/\")
endmacro(add_example)
add_example(sphere_example sphere_example.cc)
add_example(ellipsoid_example ellipsoid_example.cc)
add_example(torus_example torus_example.cc)
