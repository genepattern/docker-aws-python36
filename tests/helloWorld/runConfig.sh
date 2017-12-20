#!/bin/sh

TEST_ROOT=$PWD
TASKLIB=$TEST_ROOT/src
WORKING_DIR=$TEST_ROOT/job_1
INPUT_FILE_DIRECTORIES=$TEST_ROOT/data
COMMAND_LINE="python $TASKLIB/hello.py $INPUT_FILE_DIRECTORIES/hello.txt"
JOB_QUEUE=LowMemBatchCloudformationJobqueue

# local only variables
#
DOCKER_CONTAINER=genepattern/docker-aws-python36



# batch only variables 
#
JOB_DEFINITION_NAME="Python36_Generic"
JOB_ID=gp_job_python36_$1

