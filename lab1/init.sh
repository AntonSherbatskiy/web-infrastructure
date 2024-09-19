clear
mkdir lab1
cd lab1 && echo "FROM nginx:alpine" >> Dockerfile
tail Dockerfile
docker build -t lab01_1bradzshe .
docker images
docker run -d lab01_1bradzshe
docker ps
docker stop $(docker ps -a -q --filter ancestor=lab01_1bradzshe)
docker ps
docker ps -a