#!/bin/sh

TEST_ROOT=$PWD
TASKLIB=$TEST_ROOT/src
INPUT_FILE_DIRECTORIES=$TEST_ROOT/data

COMMAND_LINE="python $TASKLIB/hello.py $INPUT_FILE_DIRECTORIES/hello.txt"
DOCKER_CONTAINER=genepattern/docker-aws-python36



. ../../common/testing_scripts/runLocal.sh
