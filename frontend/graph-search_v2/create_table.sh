find . |sed 's/\.\///g'|xargs -i echo "insert into graph_api (size,path) values (200,'{}');"|sort > /tmp/test.sql
