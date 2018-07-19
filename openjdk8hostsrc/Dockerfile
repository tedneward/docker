FROM tedneward/openjdk7
MAINTAINER Ted Neward (ted@tedneward.com)

# May seem weird that openjdk8hostsrc depends on openjdk7; this is
# because the build for OpenJDK8 depends on a OpenJDK7 boot JDK

VOLUME ["/home"]

COPY getSource.sh /usr/local/bin
COPY configure.sh /usr/local/bin
COPY deployBuild.sh /usr/local/bin
RUN chmod +x /usr/local/bin/*.sh

ENV PATH /opt/openjdk8/bin:${PATH}
ENV JAVA_HOME /opt/openjdk8

CMD ["/bin/bash"]
