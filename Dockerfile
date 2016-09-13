FROM arizonatribe/centos
MAINTAINER David Nunez <arizonatribe@gmail.com>

# Install python-related tools
RUN yum install -y \
     python \
     python-pip \
     python-setuptools \
     supervisor
RUN pip install --upgrade pip
RUN pip install supervisor-stdout
RUN easy_install supervisor

RUN yum -y clean all
