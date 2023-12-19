#!/usr/bin/env bash

# To turn off security features use:
# docker run --security-opt seccomp:unconfined ...
# example would be to strace an executable to find its dependencies

MAJOR=v0
MINOR=1
VERSION="$MAJOR.$MINOR"

if [[ $# == 0 ]]; then
	# default is to build with GCC 10
	docker build --force-rm -t "lemurianlabs/wlc:$VERSION" -t lemurianlabs/wlc:latest -f "Dockerfile.gcc10" ..
else 
	# pick up the compiler to use
	COMPILER=$1
	docker build --force-rm -t "lemurianlabs/wlc:$VERSION" -t lemurianlabs/wlc:latest -f "Dockerfile.$COMPILER" ..
fi
