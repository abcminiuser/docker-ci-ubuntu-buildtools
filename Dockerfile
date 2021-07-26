FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# Build stuff:
RUN apt-get update && \
    apt-get -y install build-essential clang cmake ninja-build

# Extra utilities/frameworks used by CI builds:
run apt-get -y install valgrind cppcheck libsfml-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
