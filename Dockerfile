FROM ubuntu:16.04

LABEL maintainer="plandevida"

# Install CURL
RUN apt update && \
    apt -y upgrade && \
    apt -y install curl clang libicu-dev libcurl4-openssl-dev libpython2.7 && \
    rm -rf /var/lib/apt/lists/*;

# Get Vapor repo including Swift
RUN curl -sL https://apt.vapor.sh | bash;

# Installing Swift & Vapor
RUN apt-get update && \
    apt-get -y install swift vapor && \
    rm -rf /var/lib/apt/lists/*;

WORKDIR /vapor

RUN ["vapor", "--help"]
