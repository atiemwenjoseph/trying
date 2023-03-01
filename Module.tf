module "sandbox" {
    source = "./Resources"
    environment = "dev"
    block = "10.0.0.0/16"
    sub_block = "10.0.1.0/24"
    aws_regions = "eu-west-2"
    aws_regionss = "eu-west-2a"
    ami = "ami-0aaa5410833273cfe"
    instance = "t3.micro"
}
