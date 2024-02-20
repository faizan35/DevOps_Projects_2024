## Steps to Perform this Project

### Step 1: Install Terraform

- [Official Docs](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [My notes](https://github.com/faizan35/Terraform_Mastery_Hub/blob/main/Module-01/1.2-Installing-Terraform.md#linux-installation)
- Verify `terraform --version`

### Step 2: Install AWS CLI

- Google "aws cli v2", the latest version.

### Step 3: Giving IAM Roles

- Create a role
- Give access
- Create CLI Access ID and Pass
- In your machine type: `aws configure`
- type your Access key and Pass.

### Step 4: Dir Structure

- Create two dir.
- 1. For **backend_state**
- 2. your **project**

> state infrastructure should not be in the project dir.

##### Inside backend_state dir

- main.tf file will have content

```hcl
terraform {
        required_providers {
                aws = {
                      source = "hashicorp/aws"
                      version = "5.36.0"
                }
        }
}

provider "aws" {
        region = "us-east-2"
}

resource "aws_s3_bucket" "remote_bucket" {
  bucket = "my-tf-state-bucket-new"
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "remote_table" {
  name             = "my-tf-state-table"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "dynamodb-table-state"
  }
}
```

- Execute `terraform plan` and `terraform apply`

##### Inside project dir

- inside main.tf

```hcl
terraform {
    required_providers {
        aws = {
                source = "hashicorp/aws"
                version = "5.36.0"
        }
    }
}

provider "aws" {
        region = "us-east-2"
}

resource "aws_instance" "web-project" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"

  tags = {
    Name = "state_management"
  }
}
```

- Execute this `terraform apply`, this creates **`terraform.tfstate`** file.
- Now append the Backend code, inside the terraform block, outside required_providers block.

```hcl
backend "s3" {
        bucket = "my-tf-state-bucket-new"
        key = "terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "my-tf-state-table"
}
```

- Again execute `terraform apply`.

### Step 5: Completed

- Now when someone is updating the state there will be state lock entry in dynamodb table, so unless update is completed the lock will be there preventing anyone to update the state.
- Once update is completed the lock will be released and the entry in dynamodb table will be removed.

---
