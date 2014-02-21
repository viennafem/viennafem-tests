
set(ROOT_DIRECTORY "D:/git/ViennaFEM")
set(CTEST_SOURCE_DIRECTORY "${ROOT_DIRECTORY}/viennafem-dev")
set(CTEST_CMAKE_GENERATOR "Visual Studio 8 2005")
set(CTEST_BUILD_CONFIGURATION "Release")
set(CTEST_BUILD_OPTIONS "")
set(COMPILER_NAME "Visual Studio")
set(COMPILER_VERSION "8.2005")
set(WITH_MEMCHECK FALSE)
set(WITH_COVERAGE FALSE)

########################################################################
include(${ROOT_DIRECTORY}/viennafem-tests/ctestscript-common.cmake)
