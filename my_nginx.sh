#!/bin/bash
docker stop $(docker ps -aq) && docker rm $(docker ps -aq)
docker build -t my_nginx:1.0 . && docker run -d -p 9999:80 my_nginx:1.0 && curl localhost:9999

