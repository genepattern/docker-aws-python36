#!/bin/sh

TEST_ROOT=$PWD
TASKLIB=$TEST_ROOT/diffexSrc/src
WORKING_DIR=$TEST_ROOT/job_1
INPUT_FILE_DIRECTORIES=$TEST_ROOT/diffexSrc/data
COMMAND_LINE="python $TASKLIB/DiffEx.py $INPUT_FILE_DIRECTORIES/test_dataset.gct $INPUT_FILE_DIRECTORIES/test_dataset.cls 5"



# local only variables
#
DOCKER_CONTAINER=genepattern/docker-aws-python36



# batch only variables 
#
JOB_DEFINITION_NAME="Python36_Generic"
JOB_ID=gp_job_python36_$1

