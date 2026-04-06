# aws-resource-tracker
A simple shell script to audit AWS resources (S3, EC2, Lambda, and IAM) using LocalStack.
This script tracks S3, EC2, Lambda, and IAM usage locally using LocalStack.

## Setup
1. Ensure LocalStack is running.
2. Make the script executable: `chmod +x resourcetracker.sh`

## Automation
To run this daily at midnight, add the following to your `crontab -e`:
`0 0 * * * /bin/bash /home/PATH/resourcetracker.sh`
