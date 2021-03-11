# validate cfn
#aws cloudformation validate-template --template-body ./template.yaml --region us-east-1 --profile apper

# package cfn
aws cloudformation package --template ./template.yaml --s3-bucket challenge2-bucket --output json > packaged-template.json --region us-east-1 --profile apper

# deploy cfn
aws cloudformation deploy --template ./packaged-template.json --stack-name emercado-tier-2-vpc-stack  --capabilities CAPABILITY_IAM --region us-east-1 --profile apper

# #Pub Sub 1
# 10.0.0.0/19

# #Pub Sub 2
# 10.0.32.0/19

# #Priv Sub 1
# 10.0.64.0/19

# #Priv Sub 2
# 10.0.96.0/19

# #DB Sub 1
# 10.0.128.0/19

# #DB Sub 2
# 10.0.160.0/19