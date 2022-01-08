#!/bin/bash

# The only reason this file exists is because to use GCR you have to prefix
# the image name with like "gcr.io/your-gcp-project/whatever/my-image:latest"
# so all this is just somersaults to avoid committing the project name to
# public Github

if [ -z ${GCP_IMAGE_PREFIX+x} ]
  then
    echo "Environment variable GCP_PROJECT is unset."
    exit 1
fi

IMAGE_SHORT_NAME="python39-torch110"
IMAGE_LONG_NAME="$GCP_IMAGE_PREFIX/$IMAGE_SHORT_NAME:latest"
