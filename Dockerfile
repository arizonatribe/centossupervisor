FROM centos:centos7
MAINTAINER David Nunez <arizonatribe@gmail.com>

# Make sure we're using the proper terminal environment
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ENV TERM xterm

# Install general OS utilities
RUN yum install -y \
     curl \
     epel-release \
     git \
     jq \
     man \
     tar \
     vim \
     wget

# Install Make tools
RUN yum install -y \
     gcc-c++ \
     glibc-devel \
     make

# Install python-related tools
RUN yum install -y \
     python \
     python-pip \
     python-setuptools \
     supervisor
RUN pip install --upgrade pip
RUN easy_install supervisor

