#!/bin/bash
set -e

export $(cat .env | xargs)

if [ "$BRANCH" = "main" ]; then
  aws elasticbeanstalk swap-environment-cnames --source-environment-name $OLD_ENV --destination-environment-name $EB_ENVIRONMENT --region $AWS_REGION
else
  echo "Not swapping CNAMEs for branch $BRANCH"
fi