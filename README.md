[![JayNoblez](https://circleci.com/gh/JayNoblez/Dockerproj.svg?style=svg)](https://app.circleci.com/pipelines/gh/JayNoblez/Dockerproj)


## Operationalize a Machine Learning Microservice API

This project uses Docker and Kubernetes skills acquired in the Udacity ND course to operationalize a Machine Learning Microservice API. 
Project Dev Environment works best in Linux

### Project Tasks

The goal of this project is to operationalize a working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

Test the project code using linting - Hadolint
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make predictions using a running flask API
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Setup the Environment

To setup the environment:
Activate a virtual environment
Clone this repo 
Installing dependencies via project Makefile : using make install
Lint Project files with make lint

It is also important to install the following libraries separately
Docker - to Containerize your application
Hadolint - to Lint the Dockerfile
Kubernetes (Minikube) - 


## Running Bash Files
./run_docker.sh - Can be used to running Dockerfile. This builds a docker image, lists the images for logs and starts the application in a docker Containerize
./make_prediction.sh - assumes that the docker container built with run_docker.sh script is already running. Each run returns a Prediction on house pricing
./upload_docker.sh - used to upload docker image to a valid docker account to which you have auth credentials. The Path in this file would need to be adjusted to fit your purposes
./run_kubernetes.sh - This script creates a pod in Kubernetes pulling the image from your Docker Hub Registry. Script might initially fail when Pod is still creating. 
Make sure the pod is running before running the script a second time.

The ./make_prediction.sh script still works with the Pod when it is running in Kubernetes. Make sure the container is listening on the appropriate port - in this case port 80
