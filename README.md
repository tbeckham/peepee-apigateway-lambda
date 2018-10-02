## The Exercise: 

Provide a microservice that when triggered will provide a response. That's it. 

Try to keep it simple. Ask questions as needed. 

Minimum AWS Services expected to see used: 
Lambda
IAM
Cloudformation 

The exercise shall include the following deliverables:
a functional web service
a git repository for the web service code
a cloudformation template to deploy the service 


## Solution:

- Install awscli tool
- Run `aws configure` to configure the tool
- Clone this repo and cd to it
- Create the cloudformation stack by running `$ ./scripts/deploy.sh`
- Get the api gateway URL by running `aws cloudformation describe-stacks --stack-name apigateway | jq -r '.Stacks[0].Outputs[0]["OutputValue"]'`
- Test the web service by sending a post request like this `curl -x POST $URL_FROM_ABOVE`
