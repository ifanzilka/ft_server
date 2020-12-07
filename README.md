# ft_server

* [Video Docker](https://www.youtube.com/watch?v=QF4ZF857m44)

* [Docker TUTORIAL](https://badcode.ru/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/)

* [Docker Download](https://www.docker.com/products/docker-desktop)

* [Docker Download from Linux](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru)ё

* [Site](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)

* [Nginx](https://nginx.org/ru/docs/beginners_guide.html)
 #### ngnix
 
     sudo apt install nginx
     sudo service  nginx stop
     sudo service  nginx start
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
