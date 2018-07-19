#!/bin/bash

cp -a build/linux-x86_64-normal-server-$1/images/j2sdk-image /opt/openjdk8
find /opt/openjdk8 -type f -exec chmod a+r {} +
find /opt/openjdk8 -type d -exec chmod a+rx {} +

export PATH=/opt/openjdk8/bin:$PATH
export JAVA_HOME=/opt/openjdk8
