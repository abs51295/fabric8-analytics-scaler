#!/bin/bash

set -ex

. cico_setup.sh

build_image

IMAGE_NAME=$(make get-image-name) ./tests/run_integration_tests.sh

push_image