#!/bin/bash

###################################
# Author : Jihed
# Date : 04/02/2026  
#
# Version:v1
#
# This Script will report aws resource usage
# ######################

#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

echo " print List of S3"
# list s3 buckets
awslocal s3 ls >> TrackHistory

echo " print List of EC2"
#list EC2 Instances
awslocal ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> TrackHistory
echo " print List of Lambda"
#list AWS Lambda
awslocal lambda list-functions >> TrackHistory
echo " print List of IAM users"
#list IAM users
awslocal iam list-users >> TrackHistory




