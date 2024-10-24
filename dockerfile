FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN rm /var/www/html/index.html 
COPY inedx.html /var/www/html 
EXPOSE 80 
CMD ["apachectl", "-D", "FOREGROUND"]
