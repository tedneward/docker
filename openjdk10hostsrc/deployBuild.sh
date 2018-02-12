#!/bin/bash

cp -a build/linux-x86_64-normal-server-$1/images/jdk /opt/openjdk10 && \
find /opt/openjdk10 -type f -exec chmod a+r {} + && \
find /opt/openjdk10 -type d -exec chmod a+rx {} +

export PATH=/opt/openjdk10/bin:$PATH
export JAVA_HOME=/opt/openjdk10
