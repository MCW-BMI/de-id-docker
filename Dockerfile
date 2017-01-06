# File to set up Application Server to run  de-id software 
# start with the centos base image
FROM centos:6.6

# java tar file here
COPY ./archive/* /root/archive/
COPY ./install_*.sh /root/
RUN yum -y update; yum -y install python-setuptools which git httpd openssh-server curl tar ;
RUN    . /root/install_java.sh;
