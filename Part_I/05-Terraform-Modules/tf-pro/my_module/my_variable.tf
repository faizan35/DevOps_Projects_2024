variable "my_ami" {
    type = string
    description = "ami ID"
}

variable "instance_type" {
    type = string
    description = "type of instance"
}

variable "instance_name" {
    type = string
    description = "name of instance"
}

variable "env" {
    type = "string"
    description = "this is the env for infra"
}