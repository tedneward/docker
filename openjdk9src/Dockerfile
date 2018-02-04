FROM tedneward/openjdk8
MAINTAINER Ted Neward (ted@tedneward.com)

# May seem weird that openjdk9src depends on openjdk8; this is
# because the build for OpenJDK9 depends on a OpenJDK8 boot JDK

RUN \
  cd /home && \
  hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9 && \
  cd openjdk9 && \
  sh ./get_source.sh

# Run 'configure' with the build type passed in
ARG BUILD=fastdebug
RUN \
  cd /home/openjdk9 && \
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-level=${BUILD}

RUN \ 
  cd /home/openjdk9 && \
  make clean images

RUN \
  cd /home/openjdk9 && \
  cp -a build/linux-x86_64-normal-server-${BUILD}/images/jdk /opt/openjdk9 && \
  find /opt/openjdk9 -type f -exec chmod a+r {} + && \
  find /opt/openjdk9 -type d -exec chmod a+rx {} +
    
ENV PATH /opt/openjdk9/bin:$PATH
ENV JAVA_HOME /opt/openjdk9

CMD ["/bin/bash"]

