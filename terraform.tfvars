# Example variable values - copy to terraform.tfvars and adjust.
aws_region         = "us-east-1"
project            = "iac-demo"
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
instance_type      = "t3.micro"

# IMPORTANT: set this to YOUR public IP as a /32 before running.
# Find it with:  curl -s https://checkip.amazonaws.com
# Never use 0.0.0.0/0 here - it opens SSH to the entire internet.
ssh_cidr           = "203.0.113.4/32"
