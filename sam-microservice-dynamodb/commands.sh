#create an s3 bucket
aws s3 mb s3://ajithlal-code-python-sam

#package cloudformation
aws cloudformation package --s3-bucket ajithlal-code-python-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

#sam package...

#deploy

aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name python-dynamodb-sam --capabilities CAPABILITY_IAM