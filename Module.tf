module "sandbox" {
    source = "./vpc-subbet-ec2"
    block = "10.0.0.0/16"
    sub_block = "10.0.1.0/24"
    aws_regions = "eu-west-2"
    aws_regionss = "eu-west-2a"
    ami = "ami-09ee0944866c73f62"
    instance = "t3.micro"
}