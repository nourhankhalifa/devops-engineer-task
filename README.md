# tf-deploy
Bellow are the steps to deploy the infrastructure for either the production or the development environments or both on AWS Cloud

A module was created to create one or more AWS instances with a security group to enhance the code reusability and will be using this module for both environments we have

## Prerequisites
Terraform installed and configured

## Deploy the common resources
Under the envs directory, a directory named common resources was created to create the needed resources for both the dev and prod environments. To deploy the common resources run:

```
cd envs/common_resources
terraform init
terraform validate
terraform plan
terraform apply
```

## Deploy the Dev environment
Under the envs directory, a directory named dev_env was created to use the aws_instance_sg module to create 3 instances and a security group, with variables configured to be passed from a tfvars file or env vars during the runtime. It also uses the outputs created by the common resources, which are the vpc_id and the public subnet id, to create the instances To deploy the resources to the dev environment run: 

```
cd envs/dev_env
terraform init
terraform validate
terraform plan
terraform apply
```

## Deploy the Prod environment
Under the envs directory, a directory named prod_env was created to use the aws_instance_sg module to also create 3 instances and a security group, with variables configured to be passed from a tfvars file or env vars during the runtime. It will use the same outputs created by the common resources, similar to the dev environment, to create the instances To deploy the resources to the prod environment run: 

```
cd envs/prod_env
terraform init
terraform validate
terraform plan
terraform apply
```