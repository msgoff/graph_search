db_install:
	wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
	sudo apt update -y
	sudo apt install postgresql-client-12 postgresql-12
api_install:
	wget https://github.com/PostgREST/postgrest/releases/download/v7.0.1/postgrest-v7.0.1-linux-x64-static.tar.xz
	tar -xJf postgrest-v7.0.1-linux-x64-static.tar.xz
	sudo cp postgrest /usr/local/bin/


