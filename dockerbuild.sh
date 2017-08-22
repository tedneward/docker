#!/bin/bash
process_folder() {
  for i in ./*; do
    if [ -d "$i" ]; then
      name=$(basename $i)
      cd "$name"

      docker build -t tedneward/$name .
      docker push tedneward/$name

      process_folder

      cd ..
    fi
  done
}

# DOCKER_PASS must hold the password for the DockerHub registry
# in order for images to be pushed
#
docker login --username=tedneward --password=$DOCKER_PASS
process_folder
