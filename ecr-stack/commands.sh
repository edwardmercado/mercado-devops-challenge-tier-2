# validate cfn
#aws cloudformation validate-template --template-body ./template.yaml --region ap-southeast-1 --profile apper

# package cfn
aws cloudformation package --template ./template.yaml --s3-bucket challenge2-bucket --output json > packaged-template.json --region ap-southeast-1 --profile apper

# deploy cfn
aws cloudformation deploy --template ./packaged-template.json --stack-name emercado-tier-2-ecr-stack  --capabilities CAPABILITY_IAM --region ap-southeast-1 --profile apper
