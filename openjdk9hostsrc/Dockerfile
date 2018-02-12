FROM tedneward/openjdk8
MAINTAINER Ted Neward (ted@tedneward.com)

# May seem weird that openjdk9src depends on openjdk8; this is
# because the build for OpenJDK9 depends on a OpenJDK8 boot JDK

VOLUME ["/home"]

COPY getSource.sh /home
COPY configure.sh /home
COPY deployBuild.sh /home
RUN cd home && chmod +x *.sh

CMD ["/bin/bash"]
