# ft_server

* [Video Docker](https://www.youtube.com/watch?v=QF4ZF857m44)

* [Docker Download](https://www.docker.com/products/docker-desktop)

* [Docker Download from Linux](https://www.digitalocean.com/community/tutorials/docker-ubuntu-18-04-1-ru)
## Docker command

#### Смотрим локальные образы
  
    docker images 
#### Смотрим контейнеры 
      
      docker ps 
#### Создаем Docker образ свой
      
       sudo docker build -t hello_world .  
      
 -t -> flag
 
 hello_world -> name image
 
 . -> directory
#### Запускаем Docker
      
       sudo docker run hello_world
#### Смотрим контейнеры  даже если они не запущены

      sudo docker ps -a

#### Запускаем контейнер и задаем имя
    
    sudo docker run --name hello hello_world
