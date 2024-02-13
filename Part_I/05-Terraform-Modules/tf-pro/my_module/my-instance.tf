resource "aws_instance" "my_demo_instance" {
    ami = var.my_ami
    instance_type = var.instance_type
    tags = {
        Name = "${var.env}-${var.instance_name}"
    }
}

