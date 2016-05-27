FROM ubuntu:14.04.4

RUN apt-get update && \
apt-get -y install wget build-essential ruby-dev && \
gem install fpm
ADD build.sh /
RUN chmod +x /build.sh

USER root

ENTRYPOINT ["/build.sh"]