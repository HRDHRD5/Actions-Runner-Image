FROM ubuntu:latest

WORKDIR /

# dependencies
RUN apt-get update && apt-get install -y curl python3-venv git gcc g++

# Required for action/checkout currently (workaround) -> see https://github.com/nektos/act/issues/917 for more info
RUN curl -fsSL https://rpm.nodesource.com/setup_22.x
RUN apt-get install -y nodejs

# utilities
COPY scripts /root/scripts
COPY .bash_aliases /root/.bash_aliases
