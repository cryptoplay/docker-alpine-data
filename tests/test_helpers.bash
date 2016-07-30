TEST_FILE=$(basename $BATS_TEST_FILENAME .bats)
TEST_CONTAINER=bats_data

function launch {
    docker run -d --name $TEST_CONTAINER "$@" mbodenhamer/alpine-data:latest
}

function launch_args {
    docker run --rm -it mbodenhamer/alpine-data:latest "$@"
}

function cleanup {
    docker rm -f -v $TEST_CONTAINER
}
