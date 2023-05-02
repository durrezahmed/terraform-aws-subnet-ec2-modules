# Terraform Subnet and EC2 Instance Creation with Custom Modules

This Github repository contains a Terraform project that uses custom modules to create a Subnet and EC2 Instance in Amazon Web Services (AWS). The project is designed to provide a simple and repeatable way to create a basic AWS infrastructure for development, testing, or production use cases.

## Modules Used:

- `subnet`: creates a subnet within the VPC with specified CIDR block and availability zone.

- `webserver`: creates an EC2 instance within the specified subnet with specified AMI, instance type, security group, and key pair.

## Usage:

### To use this project, follow these steps:

1. Clone the repository to your local machine using the command:

```bash
$ git clone https://github.com/durrezahmed/terraform-aws-subnet-ec2-modules.git
$ cd terraform-aws-subnet-ec2-modules
```

2. In the project directory, create a `terraform.tfvars` file with your AWS access and secret key, region, and other required variables. An example file is provided as follows:

```bash
region              = "<region-value>"
env_prefix          = "<environment-value>"
vpc_cidr_block      = "<vpc-cidr-value>"
subnet_cidr_block   = "<subnet-cidr-value>"
availability_zone_1 = "<availability-zone-value>"
my_ip               = "<ip-address-value>"
instance_type       = "<instance-type-value>"
image_name          = "<expression-for-filtering-ami>"
public_key_path     = "<public-key-path>"
private_key_path    = "<private-key-path>"
```

3. Run `terraform init` to initialize the Terraform project and download the required modules:

```bash
$ terraform init
```

4. Plan the Infrastructure Automation:

```bash
$ terraform plan
```

5. Run `terraform apply` to create the AWS resources. Review the changes to be made and enter "yes" when prompted:

```bash
$ terraform apply
```

6. To destroy the AWS resources, run `terraform destroy`:

```bash
$ terraform destroy
```
