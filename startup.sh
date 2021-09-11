#!/bin/sh
aws configure set aws_access_key_id $S3_ACCESS_KEY
aws configure set aws_secret_access_key $S3_SECRET_KEY
aws s3api get-object --bucket $BUCKET --key $TARGET $TARGET
chmod +x $TARGET
./$TARGET
