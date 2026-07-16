variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name used for resource tagging"
  type        = string
  default     = "iac-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# SSH access CIDR. There is intentionally NO default so a value must be
# provided explicitly. Set this to your own IP as a /32 (e.g. 203.0.113.4/32).
# Opening SSH to 0.0.0.0/0 is blocked by the validation rule below.
variable "ssh_cidr" {
  description = "CIDR allowed to SSH. Use your own IP /32; never 0.0.0.0/0."
  type        = string

  validation {
    condition     = var.ssh_cidr != "0.0.0.0/0"
    error_message = "ssh_cidr must not be 0.0.0.0/0. Restrict SSH to a specific IP, e.g. YOUR_IP/32."
  }
}
