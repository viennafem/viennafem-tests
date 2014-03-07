
set(ROOT_DIRECTORY "/home/vdev/git/ViennaFEM")
set(CTEST_SOURCE_DIRECTORY "${ROOT_DIRECTORY}/viennafem-dev")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_CONFIGURATION "Release")
set(CTEST_BUILD_OPTIONS "")
set(ENV{CC} icc)
set(ENV{CXX} icpc)
set(COMPILER_NAME "ICC")
set(COMPILER_VERSION "14.0.2")
set(CTEST_BUILD_FLAGS -j4) # build tests in parallel
set(CTEST_COMMAND "${CTEST_EXECUTABLE_NAME} -j4") # run tests in parallel
set(WITH_MEMCHECK FALSE)
set(WITH_COVERAGE FALSE)

########################################################################
include(../ctestscript-common.cmake)
