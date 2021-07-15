#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-safeminepay/safemined-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/safemined docker/bin/
cp $BUILD_DIR/src/safemine-cli docker/bin/
cp $BUILD_DIR/src/safemine-tx docker/bin/
strip docker/bin/safemined
strip docker/bin/safemine-cli
strip docker/bin/safemine-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
