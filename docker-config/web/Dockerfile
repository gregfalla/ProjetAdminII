FROM debian:stretch

RUN apt update
RUN apt install apache2 libapache2-mod-wsgi python-dev php libapache2-mod-php -y
RUN a2enmod wsgi

COPY www/ /www/
COPY b2b/ /b2b/

COPY conf/vitrine.conf /etc/apache2/sites-available/vitrine.conf
COPY conf/b2b.conf /etc/apache2/sites-available/b2b.conf

RUN a2dissite 000-default
RUN a2ensite b2b.conf
RUN a2ensite vitrine.conf

EXPOSE 80 
CMD apachectl -D FOREGROUND