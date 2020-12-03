
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
#### Удаляем Docker
    
    sudo docker rm 7c44ed0fd2f5
    OR
    sudo docker rm $(sudo docker ps -qa)
    
#### Запускаем Docker в фоне (флаг -d)
     sudo docker run --name hello1 -d  hello_world

#### Запускаем Docker с самоудалением

     sudo docker run --name hello1 -d --rm hello_world
