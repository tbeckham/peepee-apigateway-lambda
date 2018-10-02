set -ex

export AWS_DEFAULT_REGION=us-east-1
export S3Bucket=apigateway-lambda-joint
export Stack=apigateway-lambda

# create s3 bucket
aws s3 mb s3://$S3Bucket

# zip app code
zip -r lambda.zip app.py

# copy zip to the s3 bucket created
aws s3 cp lambda.zip s3://$S3Bucket/lambda.zip

# create cloudformation stack
aws cloudformation create-stack --stack-name $Stack --template-body file://cloudformation/template.yml --capabilities CAPABILITY_IAM --parameters ParameterKey=lambdaS3Bucket,ParameterValue=$S3Bucket

# wait until stack is created
aws cloudformation wait stack-create-complete --stack-name $Stack
