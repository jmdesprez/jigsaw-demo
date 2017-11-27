#!/bin/sh

docker run -it --rm -v $PWD:/jdk9dev --workdir /jdk9dev openjdk:9-b177-jdk
