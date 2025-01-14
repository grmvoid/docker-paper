#!/bin/bash

echo "$DOCKER_TOKEN" | docker login -u grmvoid --password-stdin;

docker buildx create --bootstrap --use --name img-builder;
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --tag grmvoid/paper:1.21.4-11 \
  --tag grmvoid/paper:1.21.4 \
  --tag grmvoid/paper:1.21 \
  --push \
  1.21/;
docker buildx rm img-builder;
