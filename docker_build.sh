if [ $# -lt 1 ]
  then
  echo "Usage docker_build.sh <docker_image_name>"
  return 1
fi
docker stop $1
docker build --tag $1 . 
docker run -d --rm  -p 80:80 --name $1 $1:latest
