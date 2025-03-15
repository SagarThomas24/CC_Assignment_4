# Infrastructure as Code (IaC) using Terraform

## Overview

This project provisions a simple cloud infrastructure using **Terraform** on **AWS**. It includes:

- **EC2 Instance** (Virtual Machine)
- **S3 Bucket** (Storage)
- **Security Group** (Allows HTTP & SSH access)

## Prerequisites

- AWS Account
- Terraform Installed ([Download Terraform](https://developer.hashicorp.com/terraform/downloads))
- AWS CLI Installed & Configured (`aws configure`)

## Project Structure

```
terraform_project/
│── provider.tf          # AWS provider configuration
│── main.tf              # EC2 instance configuration
│── security.tf          # Security group rules
│── storage.tf           # S3 bucket configuration
│── README.md            # Project documentation
```

## Setup Instructions

### 1. Initialize Terraform

```sh
terraform init
```

This will download necessary provider plugins.

### 2. Plan the Infrastructure

```sh
terraform plan
```

This previews the resources that Terraform will create.

### 3. Apply the Configuration

```sh
terraform apply -auto-approve
```

This will create the EC2 instance, S3 bucket, and security group.

## Verification

### Check EC2 Instance

- Go to AWS Console → EC2 → Instances.
- Ensure the instance is **running**.

### Check S3 Bucket

- Go to AWS Console → S3 → Buckets.
- Verify the bucket is **private**.

### Check Security Group

- Go to AWS Console → EC2 → Security Groups.
- Ensure **Inbound Rules** allow:
  - **Port 80 (HTTP)** → Open to `0.0.0.0/0`
  - **Port 22 (SSH)** → Restricted to your IP (`YOUR.IP.ADDRESS/32`)

## Cleanup (Destroy Resources)

To avoid unnecessary charges, delete all resources:

```sh
terraform destroy -auto-approve
```

## Screenshots for Submission

Include screenshots of:

- EC2 instance running
- S3 bucket
- Security group rules
- `terraform apply` output

## Notes

- The S3 bucket must have a **globally unique name**.
- SSH access is restricted to **your IP** for security.

Happy Terraforming!
