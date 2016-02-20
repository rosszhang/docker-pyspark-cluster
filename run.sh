#!/bin/sh

rm -rf docker-stacks

git clone https://github.com/jupyter/docker-stacks.git

cd docker-stacks

docker run -d -p 8888:8888 -p 8088:8088 -p 8042:8042 -p 8080:8080 -p 8081:8081 -p 7077:7077 -p 4040:4040 -p 4041:4041 -p 18080:18080 -v /home/vagrant/workspace/docker/spark/docker-pyspark-cluster/work:/home/jovyan/work jupyter/all-spark-notebook
