#!/bin/bash

source ./image_names.sh
kubectl run ${IMAGE_SHORT_NAME} --restart=Never -i --tty --rm --pod-running-timeout=1h --image ${IMAGE_LONG_NAME} -- /bin/bash
