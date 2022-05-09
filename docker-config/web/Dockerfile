FROM debian:stretch

RUN apt update
RUN apt install apache2 libapache2-mod-wsgi python-dev -y
RUN a2enmod wsgi

COPY www/ /var/www/html/
COPY b2b/ /var/www/html

COPY conf/vitrine.conf /etc/apache2/sites-available/vitrine.conf
COPY conf/b2b.conf /etc/apache2/sites-available/b2b.conf

RUN a2dissite 000-default
RUN a2ensite b2b.conf
RUN a2ensite vitrine.conf

RUN service apache2 start