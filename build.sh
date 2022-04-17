#!/bin/bash

PATH_TOP="$(git rev-parse --show-toplevel)";

export UID=$(id -u)
export GID=$(id -g)
docker run --rm -it \
 --user $UID:$GID \
 -v $PATH_TOP/pico-sdk:/pico-sdk \
 -v $PATH_TOP/src:/project \
 xingrz/rpi-pico-builder:latest \
 bash -c 'mkdir -p build && cd build && cmake .. && make blink'