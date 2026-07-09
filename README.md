# 🚀 AWS Infrastructure Deployment with Terraform

A complete AWS infrastructure deployed using Terraform, featuring a custom VPC, public/private subnets, Application Load Balancer, Auto Scaling Group, IAM roles, and S3 integration.

---

## 📋 Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform on AWS.

The infrastructure includes networking, compute, security, load balancing, storage, and IAM components designed following AWS best practices.

---

## 🏗️ Architecture

### Components

- VPC
- Internet Gateway
- NAT Gateway
- Public Subnets (2 AZs)
- Private Subnets (2 AZs)
- Route Tables
- Security Groups
- Jump Server (Bastion Host)
- Web Servers
- Application Load Balancer (ALB)
- Target Group
- Auto Scaling Group (ASG)
- IAM Role & Policy
- S3 Bucket

---

## 🌐 Network Architecture

```text
Internet
    │
    ▼
Application Load Balancer
    │
    ▼
─────────────────────────
Private Subnet AZ-1
   Web Server 1

Private Subnet AZ-2
   Web Server 2
─────────────────────────
    │
    ▼
S3 Bucket

Public Subnets:
- NAT Gateway
- Jump Server
```

---

## ✨ Features

### Networking

- Custom VPC
- Multi-AZ deployment
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables and Associations

### Compute

- EC2 Web Servers
- Bastion Host
- Auto Scaling Group
- Launch Template

### Load Balancing

- Application Load Balancer
- Target Group
- Health Checks
- Listener Configuration

### Security

- Dedicated Security Groups
- IAM Role for EC2
- IAM Policy for S3 Access

### Storage

- S3 Bucket
- S3 Object Upload

---

## 📦 Prerequisites

Before deployment:

- Terraform installed
- AWS CLI configured
- AWS Account

Verify:

```bash
terraform version
aws --version
```

---

## 🚀 Deployment

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Changes

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

---

## 📁 Project Structure

```text
project1/
│
├── provider.tf
├── vpc.tf
├── subnets.tf
├── igw.tf
├── NAT.tf
├── PublicRoutingTable.tf
├── PrivateRoutingTable.tf
├── security-group.tf
├── Instances.tf
├── ALB.tf
├── autoscale.tf
├── iam.tf
├── s3.tf
├── data.tf
└── README.md
```

---

## 🔐 Security Groups

### Jump Server Security Group

| Port | Protocol | Purpose |
|--------|----------|----------|
| 22 | TCP | SSH Access |

### Web Server Security Group

| Port | Protocol | Purpose |
|--------|----------|----------|
| 22 | TCP | SSH |
| 80 | TCP | HTTP |

### ALB Security Group

| Port | Protocol | Purpose |
|--------|----------|----------|
| 80 | TCP | HTTP Traffic |

---

## 🪣 S3 Integration

This project includes:

- S3 Bucket Creation
- IAM Role for EC2
- IAM Policy Attachment
- S3 Object Upload

---

## 🧹 Destroy Infrastructure

To remove all resources:

```bash
terraform destroy
```

---

## 🛠️ Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS ALB
- AWS Auto Scaling
- AWS IAM
- AWS S3

---

## 📸 Project Screenshots

### AWS Infrastructure Overview

![screenshots](project1.png)

The screenshot demonstrates the deployed AWS infrastructure, including:

- Custom VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- EC2 Instances
- Application Load Balancer
- Auto Scaling Group
- IAM Role & Policies
- S3 Bucket Integration

---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

- Infrastructure as Code (IaC) using Terraform
- AWS Networking (VPC, Subnets, Route Tables)
- Application Load Balancer (ALB)
- Auto Scaling Groups (ASG)
- IAM Roles and Policies
- EC2 Instance Management
- S3 Storage Integration
- AWS Security Best Practices
- Multi-AZ Infrastructure Design


---

## 👩‍💻 Author

**Sohaila Hussien**

GitHub:
https://github.com/sohilahussiensayed-bit

LinkedIn:
www.linkedin.com/in/sohila-hussien-615122241

---
⭐ If you found this project useful, feel free to star the repository.