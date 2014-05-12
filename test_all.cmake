set(VIENNASTAR_HOSTNAME $ENV{VIENNASTAR_HOSTNAME})
message( "HOSTNAME: ${VIENNASTAR_HOSTNAME}" )

# set(BASE_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}") doesn't work on centos5
set(BASE_DIRECTORY ".") # using relative paths
set(HOST_DIRECTORY "${BASE_DIRECTORY}/${VIENNASTAR_HOSTNAME}")

file(GLOB TEST_TARGETS "${BASE_DIRECTORY}/test_configs/ctestscript*.cmake")
message( "TEST TARGETS: ${TEST_TARGETS}" )

file(GLOB LOCAL_CONFIGURATIONS "${HOST_DIRECTORY}/ctestscript*.cmake")
message( "LOCAL CONFIGURATIONS: ${LOCAL_CONFIGURATIONS}" )

FOREACH(TEST_TARGET ${TEST_TARGETS})

  FOREACH(LOCAL_CONFIGURATION ${LOCAL_CONFIGURATIONS})

    message("TEST TARGET: ${TEST_TARGET}")
    message("LOCAL CONFIGURATION: ${LOCAL_CONFIGURATION}")

    include(${HOST_DIRECTORY}/local.cmake)

    include(${LOCAL_CONFIGURATION})
    include(${TEST_TARGET})

    include(execute_test.cmake)

  ENDFOREACH()
ENDFOREACH()
