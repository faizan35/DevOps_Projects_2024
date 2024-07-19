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