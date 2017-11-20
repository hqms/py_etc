#!/bin/bash
set -e

DOCKER_RUN_IMAGE=py_etc
DOCKER_BUILD_IMAGE=py_etc_build

FFMPEG_VERSION=1.1

rm -f ffmpeg.tar.gz

cd build

mkdir ffmpeg
git clone https://github.com/FFmpeg/FFmpeg.git ./ffmpeg

docker build -t ${DOCKER_BUILD_IMAGE} .

cd ..

#DID=`docker create ${DOCKER_BUILD_IMAGE}`

#docker cp ${DID}:/tmp/nginx.tar.gz ./

#docker rm ${DID}
#docker rmi ${DOCKER_BUILD_IMAGE}

#docker build -t ${DOCKER_RUN_IMAGE} .

#docker images 
#docker run -d --name ${DOCKER_RUN_IMAGE} -p 8080:80 -t ${DOCKER_RUN_IMAGE}
#docker ps -a

