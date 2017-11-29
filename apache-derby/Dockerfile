FROM openjdk
MAINTAINER Ted Neward

USER root
ENV DERBY_VERSION=10.14.1.0
ENV DERBY_HOME=/usr/local/db-derby-$DERBY_VERSION-bin
ENV DERBY_INSTALL=$DERBY_HOME
ENV CLASSPATH=$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbynet.jar:.

# Download and unpack Derby
RUN mkdir $DERBY_HOME && cd $DERBY_HOME/.. && \
  wget http://mirror.olnevhost.net/pub/apache//db/derby/db-derby-$DERBY_VERSION/db-derby-$DERBY_VERSION-bin.tar.gz && \
  tar xzf db-derby-$DERBY_VERSION-bin.tar.gz && \
  chmod +x $DERBY_HOME/bin/startNetworkServer && \
  mkdir -p dbs && mkdir -p dbbackup && mkdir -p upload

EXPOSE 1527
WORKDIR $DERBY_HOME/lib
VOLUME ["$DERBY_HOME/dbs", "$DERBY_HOME/"]
CMD ["java","-Dderby.drda.host=0.0.0.0","-jar","derbyrun.jar","server","start"]
