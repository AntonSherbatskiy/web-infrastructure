# installing nginx and copying file
apt update
apt install nginx -y
cp -r /vagrant/lab2/* /var/www/html/

#starting nginx web server
systemctl start nginx
systemctl enable nginx
systemctl restart nginx
