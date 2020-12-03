# ft_server

* [Video Docker](https://www.youtube.com/watch?v=QF4ZF857m44)

* [Docker TUTORIAL](https://badcode.ru/docker-tutorial-dlia-novichkov-rassmatrivaiem-docker-tak-iesli-by-on-byl-ighrovoi-pristavkoi/)

* [Docker Download](https://www.docker.com/products/docker-desktop)

* [Docker Download from Linux](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru)

 #### Docker 2
 
### Установка заисимостей для (если другой использует)
 
    pip install -r  requirements.txt
### Создаем образ
     sudo docker build -t web-test .
     
### Запускаем его

     sudo docker run --name docker_site -d --rm web-test
