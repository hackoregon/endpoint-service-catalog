#! /bin/bash
docker build -t "$DOCKER_REPO"/"$DOCKER_IMAGE" .
docker login --username "$DOCKER_USERNAME" --password "$DOCKER_PASSWORD"
docker push "$DOCKER_REPO"/"$DOCKER_IMAGE":latest
./bin/ecs-deploy.sh  \
 -n "$ECS_SERVICE_NAME" \
 -c "$ECS_CLUSTER"   \
 -i "$DOCKER_REPO"/"$DOCKER_IMAGE":latest
