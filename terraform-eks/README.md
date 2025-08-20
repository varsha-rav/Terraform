A sample repository to create EKS cluster on AWS using Terraform.

This repository contains the Terraform configurations required to create a self managed EKS cluster. 

The configuration is broken down into the following

1. vpc.tf - Creates a vpc in AWS where the EKS cluster will be hosted

2. security-group.tf - Creates a security group for the vpc network along with egress and ingress rules

3. eks.tf - Configuration needed to create an EKS cluster. This will create a self managed node group, with a minimun of 2 worker nodes.

4. Outputs.tf - Will display details of the created cluster on console such as cluster id , cluster endpoint etc

5. variables.tf - Contains variables

6. main.tf - Contains provider versions and remote backend configurations. Backend used here to store state file is s3 with lockfile enabled to enable state locking.  