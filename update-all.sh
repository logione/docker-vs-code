#!/bin/bash

docker login

docker build --pull -t yenyen/vs-code:base base
docker build -t yenyen/vs-code:gcloud gcloud
docker build -t yenyen/vs-code:node node
docker build -t yenyen/vs-code:node-gcloud node-gcloud
docker build -t yenyen/vs-code:node-gcloud-angular node-gcloud-angular

docker push yenyen/vs-code:base
docker push yenyen/vs-code:gcloud
docker push yenyen/vs-code:node
docker push yenyen/vs-code:node-gcloud
docker push yenyen/vs-code:node-gcloud-angular