FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server moreutils gettext mariadb-client
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

COPY tools/db_create.sql /
COPY tools/run.sh /

RUN chmod +x /db_create.sql
RUN chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
