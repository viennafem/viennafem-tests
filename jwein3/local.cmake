set(ROOT_DIRECTORY "/Users/vdev/git/ViennaFEM")
set(CTEST_SOURCE_DIRECTORY $ENV{VIENNAFEMPATH})
set(USED_PROJECTS "VIENNAFEM")
set(CTEST_BUILD_OPTIONS "")

set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_FLAGS -j2) # build tests in parallel
set(CTEST_COMMAND "${CTEST_EXECUTABLE_NAME} -j2") # run tests in parallel
