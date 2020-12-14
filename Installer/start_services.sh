sudo service postgresql start
/bin/bash db_init.sh
cd ../
python3 manage.py makemigrations
python3 manage.py migrate
cp -r static ../
sudo cp /opt/graph_search/Installer/configs/nginx.conf /etc/nginx/nginx.conf
sudo cp /opt/graph_search/Installer/configs/nginx_graph_search.conf /etc/nginx/sites-enabled/default
sudo service nginx start

screen -d -m -S django python3 manage.py runserver 0.0.0.0:8000


