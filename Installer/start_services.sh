virtualenv venv -p python3
source venv/bin/activate
pip install -r requirements.txt
sudo service postgresql start
/bin/bash db_init.sh
sudo cp configs/nginx.conf /etc/nginx/nginx.conf
sudo cp configs/nginx_graph_search.conf /etc/nginx/sites-enabled/default
cd ../
python3 manage.py makemigrations
python3 manage.py migrate
#cp -r static ../
sudo service nginx start

screen -d -m -S django python3 manage.py runserver 0.0.0.0:8000


