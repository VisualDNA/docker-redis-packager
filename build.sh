#!/usr/bin/env bash
REDIS_VERSION=$1
wget http://download.redis.io/releases/redis-$REDIS_VERSION.tar.gz
tar xfvz redis-$REDIS_VERSION.tar.gz
cd redis-$REDIS_VERSION
make
mkdir -p build/usr/local
PREFIX=`pwd`/build/usr/local make install
fakeroot fpm -s dir -t deb -v $REDIS_VERSION -n redis-server -d "libc6 (>= 2.19)" -d "libjemalloc1 (>= 3.5.1)" -a native -C ./build/ -p /data