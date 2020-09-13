sudo service postgresql start
sudo service nginx start
/bin/bash db_init.sh
cd ../
python3 manage.py makemigrations
python3 manage.py migrate
