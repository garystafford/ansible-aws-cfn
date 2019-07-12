# Notes

```bash
cd /Users/garystafford/Documents/projects/sam-demo/cf/

aws cloudformation validate-template --template-body file://bastion_cf_demo.json

aws s3 cp vpc_netork_cf_demo.yml s3://gaystafford_cloud_formation/cf_demo/
aws s3 cp ec2_cf_demo.json s3://gaystafford_cloud_formation/cf_demo/
aws s3 cp bastion_cf_demo.json s3://gaystafford_cloud_formation/cf_demo/

aws cloudformation validate-template --template-url https://s3.amazonaws.com/gaystafford_cloud_formation/cf_demo/bastion_cf_demo.json

aws ssm put-parameter \
  --name /anisble_demo/ansible_private_key \
  --type SecureString \
  --value file:///Users/garystafford/.ssh/ansible \
  --description "Private key for EC2 instances" \
  --overwrite

aws ssm get-parameter \
  --with-decryption \
  --name "/anisble_demo/ansible_private_key" \
  --query Parameter.Value
```
