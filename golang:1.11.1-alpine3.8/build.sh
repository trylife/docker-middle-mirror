#!/usr/bin/env bash

reg=registry.cn-beijing.aliyuncs.com/docker-middle-mirror
tag=golang:1.11.1-alpine3.8

docker build --tag ${reg}/${tag} .
docker push ${reg}/${tag}