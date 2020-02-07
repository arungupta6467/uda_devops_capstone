if [ $# -lt 1 ]
  then
  echo "Usage pre_build.sh <docker_image_name>"
  return 1
fi
docker stop $1
docker rmi $1
