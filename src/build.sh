#!/bin/bash

# REF: https://linuxhint.com/create_docker_image_from_scratch/

g++ -o hello -Wall -static helloworld.cc
# -static: from man - On systems that support dynamic linking, this prevents linking with the shared libraries.
#          Thus, it includes dependencies into the executable
# -Wall:prints all warning messages during compilation

docker build -t cpphiworld .
