FROM httpd:2.4

COPY www/ /usr/local/apache2/htdocs/
COPY b2b /usr/local/apache2/htdocs/

COPY conf/vitrine.conf /etc/apache2/sites-available/vitrine.conf
COPY conf/b2b.conf /etc/apache2/sites-available/b2b.conf

RUN a2dissite 000-default
RUN a2ensite b2b.conf
RUN a2ensite vitrine.conf
