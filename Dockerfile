FROM debian:latest
MAINTAINER Dave Honneffer <pearofducks@gmail.com>

WORKDIR /genomicsDB
RUN apt-get update && apt-get install -y mpi-default-bin mpi-default-dev build-essential openssl libssl-dev zlib1g zlib1g-dev libcsv3 libcsv-dev git
RUN git clone --recursive https://github.com/Intel-HLS/GenomicsDB.git .
RUN make BUILD=release OPENMP=1 -j 8
