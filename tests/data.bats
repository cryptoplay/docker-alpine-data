#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check entrypoint args behavior" {
    run launch_args pwd
    [[ $lines[0] =~ "/" ]]
}

@test "[$TEST_FILE] Check default behavior" {
    launch

    # Check that tar is present
    run docker exec -it $TEST_CONTAINER tar
    [[ $output =~ "BusyBox" ]]

    # Check that zip is present
    run docker exec -it $TEST_CONTAINER zip
    [[ $output =~ "Copyright (c)" ]]

    # Check that unzip is present
    run docker exec -it $TEST_CONTAINER unzip
    [[ $output =~ "BusyBox" ]]

    cleanup
}
