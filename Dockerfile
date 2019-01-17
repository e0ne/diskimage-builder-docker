FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y qemu-utils sudo debootstrap python-pip

RUN pip install diskimage-builder bindep dib-utils

WORKDIR /opt

RUN wget https://raw.githubusercontent.com/openstack/diskimage-builder/master/bindep.txt
RUN bindep --list_all newline --file bindep.txt | xargs apt install -y

