#!/bin/bash

source ./image_names.sh

JOB_YAML=$(cat job.yaml)
JOB_YAML=${JOB_YAML//SHORTNAME/$IMAGE_SHORT_NAME}
JOB_YAML=${JOB_YAML/LONGNAME/$IMAGE_LONG_NAME}

echo "$JOB_YAML" | kubectl apply -f -
