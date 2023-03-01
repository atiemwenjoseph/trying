######## VPC ########
resource "aws_vpc" "sandboxvpc" {
  cidr_block       = var.block   
  #availability_zones = var.aws_regions
  instance_tenancy = "default"
  tags = {
    Name = "Sandbox VPC"
  }
}

####### SUBNET #######
resource "aws_subnet" "subsandbox" {
  vpc_id     = aws_vpc.sandboxvpc.id
  cidr_block = var.sub_block
  #availability_zones = var.aws_regions
  tags = {
    Name = "Sandbox Subnet"
  }
}

####### EC2 #######
resource "aws_instance" "sandboxec2" {
  ami           = var.ami
  instance_type = var.instance 
  subnet_id    = aws_subnet.subsandbox.id
  tags = {
    Name = "Sandbox Instance"
  }
}
