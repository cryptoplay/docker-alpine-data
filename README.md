[![](https://travis-ci.org/mbodenhamer/docker-alpine-data.svg?branch=master)](https://travis-ci.org/mbodenhamer/docker-alpine-data)

An Alpine base image for data containers.

## Usage

Start the container like so:

    $ docker run -d --name data [DATA_CONTAINER_OPTIONS] mbodenhamer/alpine-data

`DATA_CONTAINER_OPTIONS` should contain options for creating/mounting data volumes appropriate to the application at hand.

The container will run until it is stopped. Operations such as backup and restore can be run via `docker exec` on the running container (both `zip` and `tar` are available).


