#!/bin/bash
set -e

# get environment
ENVIRONMENT=$(cat ENVIRONMENT)

# get environment variables
EB_ENVIRONMENT=$(/opt/elasticbeanstalk/bin/get-config container -k environment_name)
CONFIG_S3_BUCKET=$(/opt/elasticbeanstalk/bin/get-config environment -k CONFIG_S3_BUCKET)
aws s3 cp s3://$CONFIG_S3_BUCKET/$ENVIRONMENT.env .env

printf "\n" >> .env
printf "EB_ENVIRONMENT=$EB_ENVIRONMENT" >> .env
printf "\n" >> .env