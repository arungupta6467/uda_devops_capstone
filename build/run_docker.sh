if [ $# -lt 1 ]
  then
  echo "Usage run_docker.sh <docker_image_name>"
  return 1
fi
docker run -d --rm  -p 80:80 --name $1 $1:latest