#!/usr/bin/env bash
docker build . -t hink/docker-node-git:release
docker push hink/docker-node-git:release
