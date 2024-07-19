#!/bin/sh

DOCKER_HUB_PROJECT=snowdreamtech/node
DOCKER_HUB_PROJECT1=snowdreamtech/nodejs
GITHUB_PROJECT=ghcr.io/snowdreamtech/node
GITHUB_PROJECT1=ghcr.io/snowdreamtech/nodejs

docker buildx build --platform=linux/amd64,linux/arm64 \
    -t ${DOCKER_HUB_PROJECT}:latest \
    -t ${DOCKER_HUB_PROJECT}:18.19.1 \
    -t ${DOCKER_HUB_PROJECT}:18.19 \
    -t ${DOCKER_HUB_PROJECT}:18 \
    -t ${GITHUB_PROJECT}:latest \
    -t ${GITHUB_PROJECT}:18.19.1 \
    -t ${GITHUB_PROJECT}:18.19 \
    -t ${GITHUB_PROJECT}:18 \
    -t ${DOCKER_HUB_PROJECT1}:latest \
    -t ${DOCKER_HUB_PROJECT1}:18.19.1 \
    -t ${DOCKER_HUB_PROJECT1}:18.19 \
    -t ${DOCKER_HUB_PROJECT1}:18 \
    -t ${GITHUB_PROJECT1}:latest \
    -t ${GITHUB_PROJECT1}:18.19.1 \
    -t ${GITHUB_PROJECT1}:18.19 \
    -t ${GITHUB_PROJECT1}:18 \
    . \
    --push
