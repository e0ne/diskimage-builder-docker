#!/usr/bin/env bash

docker build -t dib/dib . && docker run --name dib -it --privileged dib/dib bash -c "DIB_RELEASE=xenial disk-image-create -o ubuntu ubuntu-minimal"

docker cp dib:/opt/ubuntu.qcow2 .

docker rm dib_1
