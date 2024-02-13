# User Defined Terraform Modules

## Description

This project aims to provision AWS EC2 instances using Terraform, catering to multiple environments such as development (dev) and production.

## Project Breakdown

1.  Define Terraform configuration to provision EC2 instances.
2.  Organize the project structure for easy management and scalability.

## Tools Used

- Terraform
- AWS (Amazon Web Services)

## Tasks

1.  **Set Up Terraform Configuration:**

    - Define main Terraform configuration files.
    - Create variables to specify region, instance type, AMI, and environment.

2.  **Define EC2 Instance Module:**

    - Create a reusable module for provisioning EC2 instances.
    - Configure the module to accept variables for AMI, instance type, and environment.
    - Implement tagging for better resource management.

3.  **Configure Environment-specific Instances:**

    - Use the EC2 instance module to provision instances for both dev and production environments.
    - Specify environment-specific variables such as AMI IDs and instance types.

4.  **Testing and Validation:**

    - Apply Terraform configurations to provision EC2 instances in both dev and production environments.
    - Verify that instances are provisioned correctly and are accessible.

## Additional Notes

- Ensure that appropriate AWS credentials are configured for Terraform to interact with AWS services.
- Review and adjust security group settings as needed for EC2 instances.
- Monitor resource usage to avoid unnecessary costs, especially in production environments.

## Resources

- Terraform Documentation
- AWS Documentation
