rm -rf lab1
docker rm -f $(docker ps -a -q --filter ancestor="lab01_1bradzshe")
docker rmi -f lab01_1bradzshe