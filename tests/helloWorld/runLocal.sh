#!/bin/sh

TEST_ROOT=$PWD
COMMAND_LINE="python $TASKLIB/hello.py $INPUT_FILE_DIRECTORIES/hello.txt"
DOCKER_CONTAINER=genepattern/docker-aws-python36

. ../runLocal.sh
