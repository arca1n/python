#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM armv7/armhf-ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
