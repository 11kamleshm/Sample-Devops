FROM httpd:2.4
COPY ./login.html /usr/local/apache2/htdocs
COPY ./images /usr/local/apache2/htdocs
COPY ./contact.html /usr/local/apache2/htdocs
COPY ./videos /usr/local/apache2/htdocs
COPY ./about.txt /usr/local/apache2/htdocs
COPY ./index.html /usr/local/apache2/htdocs
COPY ./password-reset.html /usr/local/apache2/htdocs
COPY ./register.html /usr/local/apache2/htdocs
COPY ./css /usr/local/apache2/htdocs
COPY ./fonts /usr/local/apache2/htdocs
COPY ./js /usr/local/apache2/htdocs
COPY ./404.html /usr/local/apache2/htdocs

