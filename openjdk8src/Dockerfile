FROM tedneward/openjdk8
MAINTAINER Ted Neward (ted@tedneward.com)

RUN \
  cd /home && \
  hg clone http://hg.openjdk.java.net/jdk8u/jdk8u openjdk8 && \
  cd openjdk8 && \
  sh ./get_source.sh

# Run 'configure' with the build type passed in
ARG BUILD=fastdebug
RUN \
  cd /home/openjdk8 && \
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-level=${BUILD}

RUN \ 
  cd /home/openjdk8 && \
  make clean images && \
  cp -a build/linux-x86_64-normal-server-${BUILD}/images/jdk /opt/openjdk8 && \
  find /opt/openjdk8 -type f -exec chmod a+r {} + && \
  find /opt/openjdk8 -type d -exec chmod a+rx {} +
    
ENV PATH /opt/openjdk8/bin:$PATH
ENV JAVA_HOME /opt/openjdk8

CMD ["/bin/bash"]
