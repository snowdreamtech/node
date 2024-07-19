#!/bin/sh

DOCKER_HUB_PROJECT=snowdreamtech/node
DOCKER_HUB_PROJECT1=snowdreamtech/nodejs
GITHUB_PROJECT=ghcr.io/snowdreamtech/node
GITHUB_PROJECT1=ghcr.io/snowdreamtech/nodejs

docker buildx build --platform=linux/386,linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64,linux/ppc64le,linux/riscv64,linux/s390x \
    -t ${DOCKER_HUB_PROJECT}:latest \
    -t ${DOCKER_HUB_PROJECT}:21.7.3 \
    -t ${DOCKER_HUB_PROJECT}:21.7 \
    -t ${DOCKER_HUB_PROJECT}:21 \
    -t ${GITHUB_PROJECT}:latest \
    -t ${GITHUB_PROJECT}:21.7.3 \
    -t ${GITHUB_PROJECT}:21.7 \
    -t ${GITHUB_PROJECT}:21 \
    -t ${DOCKER_HUB_PROJECT1}:latest \
    -t ${DOCKER_HUB_PROJECT1}:21.7.3 \
    -t ${DOCKER_HUB_PROJECT1}:21.7 \
    -t ${DOCKER_HUB_PROJECT1}:21 \
    -t ${GITHUB_PROJECT1}:latest \
    -t ${GITHUB_PROJECT1}:21.7.3 \
    -t ${GITHUB_PROJECT1}:21.7 \
    -t ${GITHUB_PROJECT1}:21 \
    . \
    --push
