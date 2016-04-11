FROM jenkins-python-slave
MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>

# Install and prepare postgres
RUN apt-get update && apt-get install -y postgresql libpq-de && \
    pip3 install psycopg2 && \
    apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/
