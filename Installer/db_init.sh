sudo -u postgres -H -- psql -c "CREATE USER test PASSWORD 'password';"
sudo -u postgres -H -- psql -c "CREATE DATABASE graph_search with OWNER test;"

