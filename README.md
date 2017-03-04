## Hack Oregon API Service Catalog Service

## Purpose
Simple static catalog of the the Hack Oregon service end points

## Dependencies

* Docker or Docker toolkit
* Travis-CI

## How to build

### 1.  Create Your Environment file

* Create `env.sh` in the project with the following contents:

```bash
#! /bin/bash
# Setup Project Specfics - Make sure env.sh is in the .gitignore and .dockerignore
export DOCKER_REPO=<YOUR REPO>
export DOCKER_IMAGE=endpoint-service
export DOCKER_USERNAME=<YOUR DOCKER Repository USER NAME>
export DOCKER_PASSWORD=<YOUR DOCKER Repository PASSWORD>
export ECS_CLUSTER=<THE NAME OF YOUR ECS CLUSTER>
export ECS_SERVICE_NAME=<THE NAME OF THE SERVICE YOUR DEPLOYING TO>
echo "##############################"
echo  Your Local Project Environment
echo "##############################"
echo DOCKER_REPO: $DOCKER_REPO
echo DOCKER_IMAGE: $DOCKER_IMAGE
echo DOCKER_USERNAME: $DOCKER_USERNAME
echo DOCKER_PASWORD: $DOCKER_PASSWORD
echo ECS_CLUSTER: $ECS_CLUSTER
echo ECS_SERVICE_NAME: $ECS_SERVICE_NAME
```
### 2. Run `source env.sh` to setup your environment

### 3. Make changes to the `index.html` to reflect new services

### 4. Run `build-proj.sh`  to build the ContainerName

### 5. Run `start-proj.sh` to view your service's catalog page

### 6. Setup your project in travis-ci with the following environment variables

```bash
 DOCKER_REPO            # Your docker repository
 DOCKER_IMAGE           # endpoint-service
 DOCKER_USERNAME        # Your Docker Repository user name
 DOCKER_PASSWORD        # Your Docker Repository password
 ECS_CLUSTER            # The name of your ECS cluster
 ECS_SERVICE_NAME       # The name of the ECS service your deploying to
 AWS_DEFAULT_REGION     # THE AWS region where your cluster is located
 AWS_ACCESS_KEY_ID      # The service deployer keyid for your service
 AWS_SECRET_ACCESS_KEY  # The service deployer secret key for your service
```

**IMPORTANT** Make sure that you don't store AWS or Docker repository credentials in your github repo or expose them in travis

### 7. Commit and push your code and ensure travis builds and deploys correctly
