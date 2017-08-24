#!/bin/bash

set -e

CURRENT_DIR=$(echo $(cd $(dirname $0) && pwd))
IMAGE_TAG=${TRAVIS_BUILD_NUMBER:-sample1}
COMMON_IMAGE_NAME="nginx"
PRODUCTION_IMAGE_NAME="asia.gcr.io/${CLOUDSDK_CORE_PROJECT}/${COMMON_IMAGE_NAME}:${IMAGE_TAG}"
image_list=$(docker images | awk 'NR > 1 {print $1 ":" $2}')

echo "docker build -t ${PRODUCTION_IMAGE_NAME} -f ${CURRENT_DIR}/Dockerfile ${CURRENT_DIR}"
if ! echo $image_list | grep ${BUILD_IMAGE_NAME} > /dev/null 2>&1; then
  docker build -t ${PRODUCTION_IMAGE_NAME} -f ${CURRENT_DIR}/Dockerfile ${CURRENT_DIR}
fi

