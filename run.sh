#!/usr/bin/env bash

# set -e

# docker build -t proxy_homework .
# docker run --name=proxy_homework proxy_homework 

set -e

docker build -t proxy_homework .
docker run -p 80:8088 --rm --name=proxy_homework proxy_homework 
#I belive the -p flag will expose the port on run time 
