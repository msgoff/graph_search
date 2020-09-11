# https://docs.docker.com/engine/reference/builder/#from
# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:0.11
# Ubuntu is too big 
#FROM ubuntu:latest

# PYTHONDONTWRITEBYTECODE: Prevents Python from writing pyc files to disk (equivalent to python -B option)
ENV PYTHONDONTWRITEBYTECODE 1

# https://docs.docker.com/engine/reference/builder/#run
RUN apt-get update && \
    apt-get install -y \
# text editing
               vim \
               python3 \
               python3-pip \
               python3-dev \
               build-essential  \
               libgraphviz-dev \
               graphviz \
    && rm -rf /var/lib/apt/lists/*

#install nodejs for ngraph
RUN curl -sL https://deb.nodesource.com/setup_12.x | -E bash -
RUN apt install nodejs
RUN npm install -g n
RUN n 11.15.0

#gulp for ngraph
RUN npm install --global gulp-cli

RUN git clone https://github.com/anvaka/VivaGraphJS.git
RUN cd VivaGraphJS
RUN npm install
RUN gulp release
RUN pwd
RUN mkdir ../../static/
RUN cp dist/vivagraph.min.js ../../static/
RUN pip3 install -r requirements.txt


# https://docs.docker.com/engine/reference/builder/#copy
# requirements.txt contains a list of the Python packages needed for the PDG
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /opt
#COPY dot_file_from_df.py ast_test.py /opt/ 
