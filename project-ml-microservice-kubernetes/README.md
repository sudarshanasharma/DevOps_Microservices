[![CircleCI](https://img.shields.io/circleci/build/github/sudarshanasharma/DevOps_Microservices/circleci-project-setup)](https://app.circleci.com/pipelines/github/sudarshanasharma/DevOps_Microservices)

## Project Overview

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. In this project ,our goal is to operationalize a Python flask app—in a provided file, `app.py`—using kubernetes.
The steps are as follows;
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested


### Contents of repository
* .circleci/config.yml : This is the configuration file for building the source-code in CircleCi
* project-ml-microservice-kubernetes/Makefile : This file is needed to build the app.py file and install its dependencies 
* project-ml-microservice-kubernetes/Dockerfile : This file provides a sequence of directives to containerize an app in the Docker format
* project-ml-microservice-kubernetes/run_docker.sh : This script has the sequence of docker commands to build the app in Docker format and run it on the specified ports.
* project-ml-microservices-kubernetes/upload_docker.sh : This script is used to load a docker image to the Dockerhub repository, of a provided user.
* project-ml-microservices-kubernetes/run-kubernetes.sh : This script is used to get the Docker image of the app from Dockerhub and run it as a microservice in a kubernetes cluster with 1 pod.
* project-ml-microservices-kubernetes/Make_prediction.sh : This script is used to query the app.


### Implementation
![Diagram](https://github.com/sudarshanasharma/DevOps_Microservices/blob/master/project-ml-microservice-kubernetes/Diagram.jpg)

For the sake of clarity, I have assigned 3 different port numbers to the sockets opened by the app.py, the docker container and the kubernetes pod, as shown in the above diagram. Also, in order to run app.py locally,I had to change the port number from 80 to 8000,as: AWS cloud9 EC2 machine starts up with port 80(HTTP) unavailable to bind with app.py; and also as 80 is a privileged port (<1024),permission was denied to non-root user.

I have followed the instructions in 4.Create the Project Environment, to clone my repository and set up the project environment.

### Running `app.py`
1. Standalone:
cd DevOps_Microservices/project-ml-microservice-kubernetes/
python3 -m venv venv
source venv/bin/activate
make all
In another terminal change the PORT to 8000 in Make_prediction.sh,and execute the script.
2. Run in Docker:
cd DevOps_Microservices/project-ml-microservice-kubernetes/
python3 -m venv venv
source venv/bin/activate
./run_docker.sh
In another terminal change the PORT to 81 in Make_prediction.sh,and execute the script.
3. Run in Kubernetes:  
cd DevOps_Microservices/project-ml-microservice-kubernetes/
python3 -m venv venv
source venv/bin/activate
./run_kubernetes.sh
In another terminal change the PORT to 3001 in Make_prediction.sh,and execute the script.





