FROM postgres:9.5
RUN apt-get update 
COPY ./init-db.sql /docker-entrypoint-initdb.d/
VOLUME /var/lib/postgresql/data
