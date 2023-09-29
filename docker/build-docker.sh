#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-safeminemore/safeminemored-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/safeminemored docker/bin/
cp $BUILD_DIR/src/safeminemore-cli docker/bin/
cp $BUILD_DIR/src/safeminemore-tx docker/bin/
strip docker/bin/safeminemored
strip docker/bin/safeminemore-cli
strip docker/bin/safeminemore-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
