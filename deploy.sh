#!/bin/bash

kubectl create ns mongo-app
kubectl apply -f secret.yaml -n mongo-app
kubectl apply -f mongo-configmap.yaml -n mongo-app
kubectl apply -f mongodb-deploy.yaml -n mongo-app
kubectl apply -f mongodb-svc.yaml -n mongo-app
kubectl apply -f mongo-express-deploy.yaml -n mongo-app
kubectl apply -f mongo-express-svc.yaml -n mongo-app
