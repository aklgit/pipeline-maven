#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u akldocker -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG akldocker/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push akldocker/$IMAGE:$BUILD_TAG
