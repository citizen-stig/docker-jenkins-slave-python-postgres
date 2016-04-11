FROM jenkins-python-slave

# Install and prepare postgres
RUN apt-get update && apt-get install -y postgresql libpq-de && \
    pip3 install psycopg2 && \
    apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/
