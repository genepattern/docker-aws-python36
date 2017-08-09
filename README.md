# docker-aws-python36
Python 3.6.2 docker container for GenePattern modules running on AWSBatch

# to publish a new jobdef into aws
aws batch register-job-definition --cli-input-json file://jobdef.json  --profile genepattern



# use this line to update the common scripts to latest 
   git subtree pull --prefix common https://github.com/genepattern/docker-aws-common-scripts.git master --squash




