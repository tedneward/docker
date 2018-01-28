FROM phusion/baseimage:latest
MAINTAINER Ted Neward (ted@tedneward.com)

RUN \
  apt-get update && \
  apt-get install -y \
    libxt-dev zip pkg-config libx11-dev libxext-dev \
    libxrender-dev libxtst-dev libasound2-dev libcups2-dev libfreetype6-dev \ 
    mercurial ca-certificates-java build-essential && \
  rm -rf /var/lib/apt/lists/*
  
CMD ["/bin/bash"]
