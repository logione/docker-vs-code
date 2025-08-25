#!/bin/bash

docker login

docker build --pull -t yenyen/vs-code:base base
docker build -t yenyen/vs-code:node node
docker build -t yenyen/vs-code:angular angular

docker push yenyen/vs-code:base
docker push yenyen/vs-code:node
docker push yenyen/vs-code:angular