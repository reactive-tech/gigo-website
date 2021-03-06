#!/bin/bash

source ~/source/kubernetes-cluster/deployment/app/baseDeploy.sh

BUILD_IMG_DEPLOYMENT_NAME="gigo-website"
BUILD_IMG_NAMESPACE="static-websites"

function buildAppAndCopyOutput() {
  gigo deployment/Gigo.yaml
  cp deployment/Dockerfile $BUILD_TARGET_PATH
  cp -rp deployment/nginx $BUILD_TARGET_PATH
}

deploy
