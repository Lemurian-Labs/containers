#!/usr/bin/env bash

# script to create a test container with a specific compiler and build target
# Usage: ./build_test_container.sh COMPILER TARGET
# Examples:
#        ./build_test_compiler.sh gcc10                         will create a gcc10 dev environment with BUILD_ALL=ON
#	 ./build_test_container.sh clang13 BUILD_NUMBER_LNS     will create a clang13 dev environment with BUILD_NUMBER_LNS=ON

# To turn off security features use:
# docker run --security-opt seccomp:unconfined ...
# example would be to strace an executable to find its dependencies

MAJOR=v0
MINOR=1
VERSION="$MAJOR.$MINOR"

if [[ $# == 0 ]]; then
	# default is to build with Clang 15
	docker build --force-rm -t "lemurian_labs/wlc:$VERSION" -t lemurian_labs/wlc:latest -f Dockerfile.clang15 ..
else 
	# pick up the compiler to use
	COMPILER=$1
	if [[ $# == 2 ]]; then
		TARGET=$2
	else
		TARGET=BUILD_ALL
	fi
	docker build --force-rm -t "lemurian_labs/wlc:$VERSION" --build-arg "target=$TARGET" -f "Dockerfile.$COMPILER" ..
fi
