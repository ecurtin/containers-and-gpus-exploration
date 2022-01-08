#!/bin/bash

source image_names.sh

docker build . -t "$IMAGE_LONG_NAME"
docker push "$IMAGE_LONG_NAME"
