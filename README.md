# Terraform Auto Scaling Group Setup #

An Auto Scaling Group (ASG) in AWS is a service that automatically adjusts the number of EC2 instances in your environment based on demand, ensuring your application always has the right amount of capacity to perform efficiently. It helps keep costs low by scaling down when traffic is low and maintaining high availability by scaling up when more resources are needed. In this project, we will use Terraform to define and deploy the entire ASG setup—including launch templates, scaling policies, and all supporting infrastructure—so the environment is fully automated, repeatable, and version-controlled from start to finish.

## Getting Started ##

Before deploying the Auto Scaling Group with Terraform, complete the following steps to prepare your environment:

### 1. Set Up Your AWS Credentials ###

Make sure your AWS access key and secret key are configured on your machine so Terraform can authenticate with your AWS account. You can do this using:

```bash
aws configure
```
Enter your access key, secret key, default region, and output format when prompted.

### 2. Clone This Repository ###

Download the project to your local environment:

```bash
git clone <your-repo-url>
cd <your-repo-folder>
```


