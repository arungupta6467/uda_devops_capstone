docker build --tag capsg . 
docker run -d --rm  -p 80:80 --name capsg capsg:latest
