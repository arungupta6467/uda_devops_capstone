if [ $# -lt 1 ]
  then
  echo "Usage upload_docker.sh <docker_image_name>"
  return 1
fi

dockerpath=arungupta6467/uda_$1

docker tag $1:latest $dockerpath

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
# Step 3:
# Push image to a docker repository
docker push $dockerpath