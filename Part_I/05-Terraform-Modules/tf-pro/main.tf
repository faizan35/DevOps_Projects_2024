module "my_dev_mod" {
    source = "./my_module"
    env = "dev"
    instance_type = "t2.micro"
    my_ami = "ami-ddddddddd"
    instance_name = "mine_instance_module"
}