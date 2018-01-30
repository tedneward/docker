FROM tedneward/openjdkbase
MAINTAINER Ted Neward (ted@tedneward.com)

# Grab the boot JDK (OpenJDK 9)
# The -o Dpkg::Options::="--force-overwrite" is necessary due to OpenJDK9 packaging
# errors, according to https://askubuntu.com/questions/769467/can-not-install-openjdk-9-jdk-because-it-tries-to-overwrite-file-aready-includ
RUN apt-get -o Dpkg::Options::="--force-overwrite" install -y openjdk-9-jdk

