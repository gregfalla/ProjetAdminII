FROM httpd:2.4

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY www/ /usr/local/apache2/htdocs/
COPY b2b /usr/local/apache2/htdocs/

COPY conf/apache2.conf /etc/apache2/apache2.conf
COPY conf/vitrine.conf /etc/apache2/sites-available/vitrine.conf
COPY conf/b2b.conf /etc/apache2/sites-available/b2b.conf

RUN a2dissite 000-default.conf
RUN a2ensite WoodyToys-B2B.conf
RUN a2ensite WoodyToys-vitrine.conf
