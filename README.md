# ft_server

* [Video Docker](https://www.youtube.com/watch?v=QF4ZF857m44)

* [Docker TUTORIAL](https://badcode.ru/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/)

* [Docker Download](https://www.docker.com/products/docker-desktop)

* [Docker Download from Linux](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru)

* [Site](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)

* [Nginx](https://nginx.org/ru/docs/beginners_guide.html)

* [SSL](https://habr.com/ru/post/352722/)

* [wp-config.php](https://codex.wordpress.org/%D0%A0%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_wp-config.php)
 #### ngnix
 
     sudo apt install nginx
     sudo service  nginx stop
     sudo service  nginx start
     
https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lemp-nginx-mariadb-and-php-on-debian-10

https://linuxize.com/post/creating-a-self-signed-ssl-certificate/

https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10

https://wiki.merionet.ru/servernye-resheniya/45/kak-nastroit-redirekt-s-http-na-https-v-nginx/

Utils :
  [Generate SSL](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)
  [SSL](https://admin-serv.net/blog/670/creer-et-installer-un-certificat-ssl-sous-nginx/)
  [Install Nginx](https://www.youtube.com/watch?v=YD_exb9aPZU)
  [Install php](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10)
  [Install phpmyadmin](https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10)
  [Install wordpress](https://www.osradar.com/install-wordpress-debian-10/)
## Usage

```shell
# Build image
docker build -t ft_server .

# Run image
docker run -it -p 80:80 -p 443:443 ft_server
```
* SSL auto-certificate is created
* MySQL is automatically created
* Wordpress is automatically setup
