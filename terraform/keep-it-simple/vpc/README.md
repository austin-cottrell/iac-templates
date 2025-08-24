# Deploy VPC

The simpliest way to deploy the vpc is to  do so locally.

## Install Terraform

[Doc](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform) will provide the best method to install terraform based on your OS.

## Install AWSCLI

[Doc](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions) will provide the best method to install awscli based on your OS.

## Generate IAM keys from your user in your AWS account

[Doc](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) will provide you steps to generate your access key from the IAM user you have.

---
### Connect local environment to your AWS account

Run this command to configure your local environment to AWS account.
```bash
aws configure
```

> If you run into issues. You might be missing permissions in your aws account.

### Prepare Variables

Change the example_tfvars_file to `terraform.tfvars`
Update the values to what you are expecting. 

```hcl
company_name = "example"
production   = false
region       = "us-east-2"
```

### Run Terraform

Change directory to the vpc module directory

```bash
cd terraform/keep-it-simple/vpc
terraform init
terraform plan
terraform apply
```