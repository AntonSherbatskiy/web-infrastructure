source ./shared.sh

rm $base_dockerfile $modified_dockerfile $volume_dockerfile
docker rm -f $(docker ps -a -q --filter ancestor="${base_image}")
docker rm -f $(docker ps -a -q --filter ancestor="${modified_image}")
docker rm -f $(docker ps -a -q --filter ancestor="${volume_image}")
docker rmi -f $base_image $modified_image $volume_image