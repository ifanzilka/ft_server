FROM debian:buster

# update && upgrade
# wget -> for download
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install wget
RUN apt-get -y install vim


# install programm
RUN apt-get install -y nginx
RUN apt-get install -y mariadb-server
RUN apt-get -y install php-fpm php-mysql
RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

# setting nginx congig
WORKDIR /etc/nginx/sites-available/
COPY ./srcs/nginx_autoindex_on.conf .
RUN ln -s /etc/nginx/sites-available/nginx_autoindex_on.conf /etc/nginx/sites-enabled/

#www/server create dir and exit
WORKDIR /var/www/server
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm -rf latest.tar.gz
RUN chown -R www-data:www-data /var/www/server/wordpress
WORKDIR /var/www/server/wordpress
COPY ./srcs/wp-config.php .


# READ!
RUN chmod 777 /var/www/server/wordpress/wp-config.php

WORKDIR /
COPY ./srcs/nginx_autoindex_on.conf .
COPY ./srcs/nginx_autoindex_off.conf .
COPY ./srcs/autoindex_on.sh .
COPY ./srcs/autoindex_off.sh .


### download php-myadmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.4-all-languages/ /var/www/server/phpmyadmin
COPY ./srcs/config.inc.php /var/www/server/phpmyadmin


#Script for ssl
COPY ./srcs/ssl.sh .
RUN bash ssl.sh
RUN rm -rf ssl.sh


# Init Data_base    
COPY ./srcs/db.sh .
RUN bash db.sh
RUN rm -rf db.sh

WORKDIR /
COPY ./srcs/start.sh .

EXPOSE 80 443
CMD ["bash" ,"start.sh"]
