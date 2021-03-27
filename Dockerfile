FROM ubuntu:18.04

# Install things
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    --no-install-recommends --auto-remove \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
