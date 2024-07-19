# Project 1: Automated Infrastructure Provisioning with Terraform and Python

### Objectives

- Automate the creation and management of infrastructure using Terraform.
- Use Python scripts to dynamically generate Terraform configuration files.
- Execute Terraform commands through Python scripts.
- Handle post-deployment verification using Python.

> This documentation has Ubuntu/Debian setup based guide.

### Prerequisites

##### 1. Install Terraform: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)

```sh
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt-get install -y terraform
```

##### 2. Install Python & pip: [Python Installation Guide](https://www.python.org/downloads/)

```sh
sudo apt install -y python3 python3-pip

python3 --version
pip3 --version
```

##### 3. Install necessary Python packages:

```bash
pip3 install subprocess.run
```

- `os` and `json` comes pre-installed with Python itself no need to install them.

## Step-by-Step Guide

### Step 1: Setting Up Terraform Configuration

1. **Create a directory structure for the project:**

   ```bash
   mkdir terraform-python-automation
   cd terraform-python-automation
   mkdir terraform
   mkdir scripts
   ```

2. **Create a Terraform configuration file (`main.tf`):**

   ```hcl
   # terraform/main.tf
   provider "aws" {
     region = "us-west-2"
   }

   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"
     instance_type = "t2.micro"
   }
   ```

### Step 2: Writing Python Scripts

1. **Generate Terraform Configuration File Using Python:**

   ```python
    # scripts/generate_tf_config.py
    import os

    terraform_config = """
    provider "aws" {
        region = "us-west-2"
    }

    resource "aws_instance" "example" {
        ami           = "ami-0c55b159cbfafe1f0"
        instance_type = "t2.micro"
    }
    """

    def create_tf_file():
        with open('../terraform/main.tf', 'w') as file:
            file.write(terraform_config)
        print("Terraform configuration file generated.")

    if __name__ == "__main__":
        create_tf_file()
   ```

2. **Execute Terraform Commands Using Python:**

   ```python
   # scripts/execute_terraform.py
   import subprocess
   import os

   def run_terraform_init():
       process = subprocess.Popen(["terraform", "init"], cwd="../terraform")
       process.communicate()

   def run_terraform_apply():
       process = subprocess.Popen(["terraform", "apply", "-auto-approve"], cwd="../terraform")
       process.communicate()

   if __name__ == "__main__":
       run_terraform_init()
       run_terraform_apply()
       print("Terraform apply completed.")
   ```

3. **Verify Deployment Using Python:**

   ```python
   # scripts/verify_deployment.py
   import boto3

   def verify_instance():
       ec2 = boto3.client('ec2', region_name='us-west-2')
       instances = ec2.describe_instances()
       for reservation in instances['Reservations']:
           for instance in reservation['Instances']:
               print(f"Instance ID: {instance['InstanceId']} - State: {instance['State']['Name']}")

   if __name__ == "__main__":
       verify_instance()
   ```

### Step 3: Running the Automation

1. **Run the script to generate Terraform configuration:**

   ```bash
   python scripts/generate_tf_config.py
   ```

2. **Run the script to execute Terraform commands:**

   ```bash
   python scripts/execute_terraform.py
   ```

3. **Run the script to verify the deployment:**
   ```bash
   python scripts/verify_deployment.py
   ```

### Conclusion

You've successfully automated infrastructure provisioning with Terraform using Python. The scripts help you generate Terraform configuration files, execute Terraform commands, and verify the deployment. This project can be expanded by adding more resources, handling different environments, and incorporating error handling and logging.
