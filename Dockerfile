FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    cmake \
    ninja-build \
    git \
    curl \
    python3 \
    python3-pip \
    cppcheck \
    clang \
    clang-tidy \
    clang-format \
    valgrind \
    lcov

RUN pip3 install \
    conan \
    gcovr \
    pytest

# ARM Toolchain
RUN apt-get install -y gcc-arm-none-eabi

# JFrog CLI
RUN curl -fL https://install-cli.jfrog.io | sh
RUN mv jfrog /usr/local/bin/jf

WORKDIR /workspace
