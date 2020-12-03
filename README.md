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
     
### Запускаем его с указание портов

     
    sudo docker run --name docker_site -p 8080:8080 --rm web-test

### Запускаем с переменной окуржения

    sudo docker run --name docker_site -p 8080:8080 -e TZ=Europe/Moscow --rm web-test 
### Добавляем файлы в контейнер

    sudo docker run --name docker_site -p 8080:8080 -e TZ=Europe/Moscow  -v /home/ifanzilka/PycharmProjects/Docker_Python_2/resources:/usr/src/app/resources  --rm web-test

### Добавляем volume(папку)
   
    sudo docker volume create web
    sudo docker volume ls 
