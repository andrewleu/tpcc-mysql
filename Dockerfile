FROM ubuntu:xenial-20201014

RUN apt-get update && apt-get install -y gcc libc6-dev zlib1g-dev make libmysqlclient-dev

ADD . /tpcc-mysql
ENV PATH /tpcc-mysql:$PATH
WORKDIR /tpcc-mysql
RUN cd src && make
