
set(ROOT_DIRECTORY "/home/vdev/git/ViennaFEM")
set(CTEST_SOURCE_DIRECTORY "${ROOT_DIRECTORY}/viennafem-dev")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_CONFIGURATION "Debug")
set(CTEST_BUILD_OPTIONS "")
SET(ENV{CC} /usr/bin/gcc)
SET(ENV{CXX} /usr/bin/g++44)
set(COMPILER_NAME "GCC")
set(COMPILER_VERSION "4.4.7")
set(CTEST_BUILD_FLAGS -j2) # build tests in parallel
set(CTEST_COMMAND "${CTEST_EXECUTABLE_NAME} -j2") # run tests in parallel
set(WITH_MEMCHECK TRUE)
set(WITH_COVERAGE FALSE)

########################################################################
include(${ROOT_DIRECTORY}/viennafem-tests/ctestscript-common.cmake)
