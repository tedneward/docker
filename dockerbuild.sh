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

docker login
process_folder
