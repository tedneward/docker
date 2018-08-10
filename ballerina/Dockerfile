FROM tedneward/java
MAINTAINER Ted Neward <ted@tedneward.com>

ENV BALLERINA_VER=0.980.1

RUN curl -fsSL -o /tmp/ballerina-platform-linux-installer-x64-${BALLERINA_VER}.rpm https://product-dist.ballerina.io/downloads/${BALLERINA_VER}/ballerina-platform-linux-installer-x64-${BALLERINA_VER}.rpm && \ 
  rpm -i --quiet /tmp/ballerina-platform-linux-installer-x64-${BALLERINA_VER}.rpm

ENV BALLERINA_HOME=/opt/ballerina
ENV PATH=$BALLERINA_HOME/bin:$PATH

EXPOSE 9090

ENTRYPOINT ["/bin/bash"]
