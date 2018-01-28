FROM phusion/baseimage:latest
MAINTAINER Ted Neward (ted@tedneward.com)

RUN \
  apt-get update && \
  apt-get install -y \
    libxt-dev zip pkg-config libX11-dev libxext-dev \
    libxrender-dev libxtst-dev libasound2-dev libcups2-dev libfreetype6-dev && \
  rm -rf /var/lib/apt/lists/*
  
RUN \
  apt-get update && \
  apt-get install -y mercurial ca-certificates-java build-essential
  
# The below is only necessary if the source is not already on your host environment
# Note that doing this also means the source will be cloned at the time of the
# Docker image's creation, and will always need to be updated when used.
RUN \
  mkdir /home/openjdksrc \
  cd /home/ && \
  hg clone http://hg.openjdk.java.net/jdk8u/jdk8u openjdk8 && \
  cd openjdk8 && \
  sh ./get_source.sh

# This pulls down the boot JDK and installs it into /opt
RUN \
  apt-get install -y wget && \
  wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz
    
RUN \
  tar zxvf jdk-8u45-linux-x64.tar.gz -C /opt

##########################################################################
# Everything below this line does the actual build of the OpenJDK

# Run 'configure' with the boot JDK's path passed in
RUN \
  cd /home/openjdksrc/openjdk8 && \
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-boot-jdk=/opt/jdk1.8.0_45

RUN \  
  cd /home/openjdksrc/openjdk8 && \
  make clean images && \
  cp -a build/linux-x86_64-normal-server-release/images/jdk /opt/openjdk8 && \
  find /opt/openjdk8 -type f -exec chmod a+r {} + && \
  find /opt/openjdk8 -type d -exec chmod a+rx {} +
    
ENV PATH /opt/openjdk8/bin:$PATH
ENV JAVA_HOME /opt/openjdk8

CMD ["/bin/bash"]
