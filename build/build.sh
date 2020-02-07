#!/bin/bash
if [ $# -lt 1 ]
  then
  echo "Usage build.sh <docker_image_name>"
  return 1
fi
docker build --tag $1 /Users/jaymojnidar/work/code/arun/github.com/uda_devops_capstone/build/.. 
