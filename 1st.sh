filebrowser -d /root/data//filebrowser.db config init
filebrowser -d /root/data/filebrowser.db config set --address 0.0.0.0
filebrowser -d /root/data//filebrowser.db config set --port 8088
filebrowser -d /root/data/filebrowser.db config set --locale zh-cn
filebrowser -d /root/data/filebrowser.db config set --log /var/log/filebrowser.log
filebrowser -d /root/data/filebrowser.db users add root password --perm.admin

a2enmod proxy proxy_http proxy_balancer lbmethod_byrequests rewrite

cp /app/alist.conf /etc/apache2/sites-enabled/
cp /app/filebrowser.conf /etc/apache2/sites-enabled/