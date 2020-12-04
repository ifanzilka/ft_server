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
    
    docker run -v <DIRECTORY>:<CONTAINER_DIRECTORY> ...,
   где DIRECTORY - это путь к папке, которую нужно смонтировать,
   
   CONTAINER_DIRECTORY - путь внутри контейнера.

### Добавляем volume(папку)
   
    sudo docker volume create web
    sudo docker volume ls 
    
### Запуск через c volume    
    sudo docker run --name docker_site -p 8080:8080 -e TZ=Europe/Moscow  -v web:/usr/src/app/resources  --rm web-test


