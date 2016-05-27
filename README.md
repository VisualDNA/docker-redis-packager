Docker Redis Packager
=====================

Creates debian/ubuntu .deb package for Redis.

Usage
-----

`docker run -v <host_directory>:/data prascuna/docker-redis-packager <redis-version>`


### Example

`docker run -v /tmp:/data prascuna/docker-redis-packager 3.2.0`

It will build Redis 3.2.0 and put the debian package in /tmp

```
$ dpkg -c /tmp/redis-server_3.2.0_amd64.deb
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/local/
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/local/bin/
-rwxr-xr-x 0/0         5290741 2016-05-27 17:26 ./usr/local/bin/redis-check-rdb
-rwxr-xr-x 0/0         2652467 2016-05-27 17:26 ./usr/local/bin/redis-cli
-rwxr-xr-x 0/0           29299 2016-05-27 17:26 ./usr/local/bin/redis-check-aof
-rwxr-xr-x 0/0         2474851 2016-05-27 17:26 ./usr/local/bin/redis-benchmark
lrwxrwxrwx 0/0               0 2016-05-27 17:26 ./usr/local/bin/redis-sentinel -> redis-server
-rwxr-xr-x 0/0         5290741 2016-05-27 17:26 ./usr/local/bin/redis-server
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/share/
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/share/doc/
drwxr-xr-x 0/0               0 2016-05-27 17:27 ./usr/share/doc/redis-server/
-rw-r--r-- 0/0             137 2016-05-27 17:27 ./usr/share/doc/redis-server/changelog.gz
```

