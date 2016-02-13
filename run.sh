#!/bin/sh

git clone https://github.com/jupyter/docker-stacks.git

cd docker-stacks

docker run -d -p 8888:8888 -p 4040:4040 -p 4041:4041 -e GRANT_SUDO=yes -v /home/vagrant/workspace/docker/spark/docker-pyspark-cluster/work:/home/jovyan/work jupyter/all-spark-notebook
