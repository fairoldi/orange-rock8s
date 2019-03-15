sudo ip link add name dummy0 type dummy
sudo ip address add 192.168.3.128 dev dummy0

sudo docker run --name test-nginx -v /home/fabio/index.html:/usr/share/nginx/html/index.html:ro -p 6443:80 -d nginx