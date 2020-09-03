#!/bin/sh

docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --url "https://gitlab.lenex.com.ua/" \
    --registration-token "pa54EsE74y5XxotUNyyg" \
    --executor "docker" \
    --docker-image alpine:latest \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --description "docker-runner" \
    --tag-list "docker" \
    --run-untagged="true" \
    --locked="false" \
    --access-level="not_protected"
