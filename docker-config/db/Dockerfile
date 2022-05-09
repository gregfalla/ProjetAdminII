FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN mkdir /db
COPY ecommerce.db /db/
RUN /usr/bin/sqlite3 /db/ecommerce.db
CMD /bin/bash
