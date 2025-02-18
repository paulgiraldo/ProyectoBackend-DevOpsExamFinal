FROM mysql:latest

WORKDIR /app

ADD . /app

USER mysql

ENV MYSQL_ROOT_PASSWORD=rootpwd

COPY ./mysql_data.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]