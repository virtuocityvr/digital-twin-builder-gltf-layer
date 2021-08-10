FROM amazonlinux

RUN yum -y update 
RUN yum -y install gcc 
RUN yum -y install gcc-c++ 
RUN yum -y install git 
RUN yum -y install make 
# RUN yum -y install cmake 
# RUN yum -y install boost-devel
# RUN yum -y install glibc-static
# RUN yum -y install libstdc++-static
RUN yum -y install zip
RUN yum -y install unzip
RUN mkdir /dockerstuff
ADD . /dockerstuff

WORKDIR /dockerstuff
RUN make -f ./Makefile-deploy