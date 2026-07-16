# Architecture — Terraform AWS Infrastructure

Infrastructure as Code with Terraform: a VPC with a public subnet and an EC2 web server, all provisioned declaratively.

```mermaid
flowchart TB
    TF[Terraform CLI] -->|apply| AWS[(AWS Provider)]
    AWS --> VPC[VPC 10.0.0.0/16]
    VPC --> SUB[Public Subnet]
    VPC --> IGW[Internet Gateway]
    SUB --> RT[Route Table - 0.0.0.0/0 to IGW]
    SUB --> SG[Security Group - HTTP 80 + SSH restricted]
    SG --> EC2[EC2 Web Server]
    EC2 --> OUT[Output: web_url / public_ip]
```

## How it works

- Terraform declaratively provisions a VPC, public subnet, Internet Gateway and route table.
- A Security Group allows HTTP from anywhere and SSH only from a restricted CIDR.
- An EC2 instance is launched as a web server and its public IP / URL is exposed as an output.
- The entire stack is reproducible with terraform apply and fully removable with terraform destroy.
