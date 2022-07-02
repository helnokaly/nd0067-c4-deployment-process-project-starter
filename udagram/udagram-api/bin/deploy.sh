eb init udagram-api --platform node.js-14 --region us-east-1
eb create udagram-api --vpc.id $AWS_VPC_ID
eb list
eb use udagram-api
eb setenv PORT=$PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB JWT_SECRET=$JWT_SECRET AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE
eb deploy
