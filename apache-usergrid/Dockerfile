FROM tomcat
MAINTAINER Ted Neward <ted@tedneward.com>

# When we start this part of the Dockerfile, the tomcat Dockerfile has set the current directory
# to be $CATALINA_HOME (/usr/local/tomcat)

# Copy logging file
COPY log4j.properties /usr/local/tomcat/lib

ENV USERGRID_VER=2.1.0

# Download Usergrid distribution (into a "downloads" webapp for easy access/verification)
RUN cd webapps && mkdir downloads && cd downloads && \
  wget -q http://apache.mirrors.tds.net/usergrid/usergrid-2/v${USERGRID_VER}/apache-usergrid-${USERGRID_VER}-binary.tar.gz && \
  tar zxf apache-usergrid-${USERGRID_VER}-binary.tar.gz && \
  cd ..

# Install it in Tomcat /webapps directory
RUN cd webapps && \
  rm -r ROOT docs examples manager host-manager && \
  mv downloads/apache-usergrid-${USERGRID_VER}/stack/ROOT.war . && \
  tar xf downloads/apache-usergrid-${USERGRID_VER}/portal/dist/usergrid-portal.tar && \
  mv usergrid-portal.2.0.18 portal && \
  cd ..
  # need to somehow configure portal/config.js: Usergrid.overrideUrl = 'http://localhost:8080/'; to correct URL?

# Thile file uses a whole host of environment variables that will need to be set,
# make sure to check out http://usergrid.apache.org/docs/installation/deployment-guide.html
# for the full list; these are all set in the docker-compose.yml in this same directory.
COPY default.usergrid.properties $CATALINA_HOME/lib/usergrid-deployment.properties

EXPOSE 8080

VOLUME ["/logs"]

# Catalina should start up
CMD ["catalina.sh", "run"]
