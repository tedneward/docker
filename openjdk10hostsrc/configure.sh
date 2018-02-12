#!/bin/bash

if [ "$1" = "release" ]
then
  echo "Configuring release build"
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-level=$1 $*
elif [ "$1" = "slowdebug" ]
then
  echo "Configuring full debug build"
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-level=$1 $*
else
  echo "Configuring fastdebug build"
  bash ./configure --with-cacerts-file=/etc/ssl/certs/java/cacerts --with-debug-level=fastdebug $*
fi

