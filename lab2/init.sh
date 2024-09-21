source ./shared.sh

clear

# Task 1
echo "FROM ${nginx_alpine}" >> $base_dockerfile
tail $base_dockerfile
docker build -f $base_dockerfile -t $base_image .
docker run -d -p 8999:80 $base_image


# Task 2
echo "FROM ${base_image}" >> $modified_dockerfile
echo "COPY ./index.html /usr/share/nginx/html" >> $modified_dockerfile
docker build -f $modified_dockerfile -t $modified_image .
docker run -d -p 9000:80 $modified_image


# Task 3
echo "FROM ${base_image}" >> $volume_dockerfile
docker build -f $volume_dockerfile -t $volume_image .
docker run -d -p 9001:80 -v ./index_volume.html:/usr/share/nginx/html/index.html $volume_image