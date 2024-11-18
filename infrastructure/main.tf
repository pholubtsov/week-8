# Using state file from S3 bucket 
terraform {
  backend "s3" {
    # Configuration is stored in ./backend/dev.tfvars
  }
}

# Configure the AWS provider
provider "aws" {
  region  = var.region
  profile = "admin"
}

# Call the EC2 module
module "aws-ec2" {
  source                 = "./modules/aws-ec2"
  key_name               = var.key_name
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
}
