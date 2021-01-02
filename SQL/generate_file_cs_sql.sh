find ~/sympy/ -type f -exec sha1sum "{}" \;|xargs -i echo insert into file_checksums \(sha1,filepath\) values "('{}');" |sed "s/  /\',\'/g" > file_checksums.sql
