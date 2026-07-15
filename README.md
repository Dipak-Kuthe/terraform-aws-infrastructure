# Infrastructure as Code (IaC) on AWS using Terraform

> Provision a complete AWS environment (VPC + EC2) declaratively with **Terraform**.

This project uses Terraform to build and manage AWS infrastructure as code. It
creates a VPC with a public subnet, an Internet Gateway and route table, a
Security Group, and an EC2 instance running a web server — all reproducible,
version-controlled and destroyable with a single command.

---

## Skills Demonstrated
- **Terraform** — providers, resources, variables, outputs, state
- **AWS** — VPC, subnet, IGW, route table, security group, EC2
- **Automation** — repeatable, idempotent provisioning
- **IaC best practices** — variables file, remote-ready backend, tagging

---

## Repository Structure
```
.
├── main.tf          # Core resources (VPC, subnet, IGW, SG, EC2)
├── variables.tf     # Input variables
├── outputs.tf       # Useful outputs (public IP, VPC id)
├── terraform.tfvars # Example variable values
└── README.md
```

---

## Prerequisites
- Terraform >= 1.5 installed
- AWS credentials configured (`aws configure` or environment variables)

## Usage
```bash
# Initialize providers and modules
terraform init

# Preview the changes
terraform plan

# Apply the infrastructure
terraform apply -auto-approve

# Show outputs (e.g. the EC2 public IP)
terraform output
```

## Destroy
```bash
terraform destroy -auto-approve
```

---

## Notes
- Never commit `*.tfstate` files or secrets. Use a remote backend (e.g. S3 +
  DynamoDB lock) for team use.
- `terraform.tfvars` here contains example, non-sensitive values only.

---

## Author
**Dipak Kuthe** — DevOps / Cloud Engineer
