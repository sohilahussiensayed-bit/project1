# AWS Infrastructure with Terraform

This project provisions a complete AWS infrastructure using Terraform.

## Architecture

The infrastructure includes:

- VPC
- Public Subnets (2 AZs)
- Private Subnets (2 AZs)
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- Jump Server (Bastion Host)
- Application Load Balancer (ALB)
- Launch Template
- Auto Scaling Group
- IAM Role & Instance Profile
- S3 Bucket
- S3 Object (test.txt)

## Network Design

### VPC
- CIDR: `192.168.0.0/16`

### Public Subnets
- `192.168.3.0/24`
- `192.168.4.0/24`

### Private Subnets
- `192.168.1.0/24`
- `192.168.2.0/24`

## Terraform Files

| File | Description |
|--------|-------------|
| provider.tf | AWS Provider Configuration |
| vpc.tf | VPC Creation |
| subnets.tf | Public & Private Subnets |
| igw.tf | Internet Gateway |
| NAT.tf | NAT Gateway |
| PublicRoutingTable.tf | Public Routing |
| PrivateRoutingTable.tf | Private Routing |
| security-group.tf | Security Groups |
| Instances.tf | EC2 Instances |
| ALB.tf | Load Balancer |
| autoscale.tf | Launch Template & Auto Scaling Group |
| iam.tf | IAM Role & Instance Profile |
| s3.tf | S3 Bucket |
| S3 Policy.tf | S3 Access Policy |
| data.tf | Data Sources |

## Deployment

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview changes:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

## Author

Sohaila Hussien