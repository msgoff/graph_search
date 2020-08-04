sudo -u postgres -H -- psql -c "CREATE USER user PASSWORD 'password';"
sudo -u postgres -H -- psql -c "CREATE DATABASE graph_search with OWNER user;"
