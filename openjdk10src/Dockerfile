FROM tedneward/openjdk9
MAINTAINER Ted Neward (ted@tedneward.com)

# May seem weird that openjdk10src depends on openjdk9; this is
# because the build for OpenJDK10 depends on a OpenJDK9 boot JDK

RUN \
  cd /home && \
  hg clone http://hg.openjdk.java.net/jdk/jdk openjdk && \
  cd openjdk && \
  sh ./get_source.sh

# TODO: Check out to the tag specified for OpenJDK10

# Run 'configure' with the boot JDK's path passed in
RUN \
  cd /home/openjdk && \
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-enabled

RUN \ 
  cd /home/openjdk9 && \
  make clean images && \
  cp -a build/linux-x86_64-normal-server-release/images/jdk /opt/openjdk10 && \
  find /opt/openjdk10 -type f -exec chmod a+r {} + && \
  find /opt/openjdk10 -type d -exec chmod a+rx {} +
    
ENV PATH /opt/openjdk10/bin:$PATH
ENV JAVA_HOME /opt/openjdk10

CMD ["/bin/bash"]
