#!/bin/bash

rm -Rf cfn-custom-resource-ei-launch-template.zip main

BUCKET_NAME=public-aws-serverless-repo
GOOS=linux go build main.go

zip cfn-custom-resource-ei-launch-template.zip ./main

aws s3 cp cfn-custom-resource-ei-launch-template.zip s3://$BUCKET_NAME/cfn-custom-resource-ei-launch-template.zip
