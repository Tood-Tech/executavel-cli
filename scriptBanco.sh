#!/bin/bash

#Cria a imagem do docker
sudo docker stop $(sudo docker ps -aq)
sudo docker rm $(sudo docker ps -aq)

sudo docker build -t dockerfile -f Dockerfile-mysql .

sudo docker run -d -p 3306:3306 --name ContainerBD -e MYSQL_ROOT_PASSWORD=sptech -e MYSQL_DATABASE=ToodDatabase dockerfile

sleep 2

sudo chmod 777 aplicacao-java-cli-1.0-SNAPSHOT-jar-with-dependencies.jar
java -jar aplicacao-java-cli-1.0-SNAPSHOT-jar-with-dependencies.jar
