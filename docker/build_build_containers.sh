#!/usr/bin/env bash

# script to generate the docker build containers with specific compilers installed
# precondition: successful docker login so that the docker push can succeed

# GCC compiler containers
docker build --target gcc9builder -t lemurianlabs/builders:gcc9builder -f Dockerfile.gcc9builder .
docker push lemurianlabs/builders:gcc9builder
docker build --target gcc10builder -t lemurianlabs/builders:gcc10builder -f Dockerfile.gcc10builder .
docker push lemurianlabs/builders:gcc10builder
docker build --target gcc11builder -t lemurianlabs/builders:gcc11builder -f Dockerfile.gcc11builder .
docker push lemurianlabs/builders:gcc11builder
docker build --target gcc12builder -t lemurianlabs/builders:gcc12builder -f Dockerfile.gcc12builder .
docker push lemurianlabs/builders:gcc12builder
docker build --target gcc13builder -t lemurianlabs/builders:gcc13builder -f Dockerfile.gcc13builder .
docker push lemurianlabs/builders:gcc13builder

# CLang compiler containers
docker build --target clang11builder -t lemurianlabs/builders:clang11builder -f Dockerfile.clang11builder .
docker push lemurianlabs/builders:clang11builder
docker build --target clang12builder -t lemurianlabs/builders:clang12builder -f Dockerfile.clang12builder .
docker push lemurianlabs/builders:clang12builder
docker build --target clang13builder -t lemurianlabs/builders:clang13builder -f Dockerfile.clang13builder .
docker push lemurianlabs/builders:clang13builder
docker build --target clang14builder -t lemurianlabs/builders:clang14builder -f Dockerfile.clang14builder .
docker push lemurianlabs/builders:clang14builder
docker build --target clang15builder -t lemurianlabs/builders:clang15builder -f Dockerfile.clang15builder .
docker push lemurianlabs/builders:clang15builder
docker build --target clang16builder -t lemurianlabs/builders:clang16builder -f Dockerfile.clang16builder .
docker push lemurianlabs/builders:clang16builder
