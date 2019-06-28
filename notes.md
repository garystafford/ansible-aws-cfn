# Notes

```bash
cd /Users/garystafford/Documents/projects/sam-demo/cf/

aws cloudformation validate-template --template-body file://bastion_cf_demo.json

aws s3 cp vpc_netork_cf_demo.yml s3://gaystafford_cloud_formation/cf_demo/
aws s3 cp ec2_cf_demo.json s3://gaystafford_cloud_formation/cf_demo/
aws s3 cp bastion_cf_demo.json s3://gaystafford_cloud_formation/cf_demo/

aws cloudformation validate-template --template-url https://s3.amazonaws.com/gaystafford_cloud_formation/cf_demo/bastion_cf_demo.json
```
