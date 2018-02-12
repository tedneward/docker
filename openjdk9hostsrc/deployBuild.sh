#!/bin/bash

cp -a build/linux-x86_64-normal-server-$1/images/jdk /opt/openjdk9 && \
find /opt/openjdk9 -type f -exec chmod a+r {} + && \
find /opt/openjdk9 -type d -exec chmod a+rx {} +

export PATH=/opt/openjdk9/bin:$PATH
export JAVA_HOME=/opt/openjdk9
