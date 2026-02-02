From ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN rm /var/www/html/index.html
ADD ./* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name DEVOPS
