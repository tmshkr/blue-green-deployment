#!/bin/bash
set -e

EB_ENVIRONMENT=$(/opt/elasticbeanstalk/bin/get-config container -k environment_name)
printf "\nEB_ENVIRONMENT=$EB_ENVIRONMENT" >> .env
printf "\n" >> .env