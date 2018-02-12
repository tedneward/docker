FROM tedneward/openjdk7
MAINTAINER Ted Neward (ted@tedneward.com)

# May seem weird that openjdk8hostsrc depends on openjdk7; this is
# because the build for OpenJDK8 depends on a OpenJDK7 boot JDK

VOLUME ["/home"]

COPY getSource.sh /home
COPY configure.sh /home
COPY deployBuild.sh /home
RUN cd home && chmod +x *.sh

CMD ["/bin/bash"]
