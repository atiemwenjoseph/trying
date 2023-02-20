variable "aws_regions" {
  description = "Default AWS region"
  type        = string
}

variable "aws_regionss" {
  description = "Default AWS region"
  type        = string
}

variable "environment" {
  description = "AWS account name we deploying to"
  type        = string
}

variable "block" {
  description = "This is the cidr block for the VPC"
  type        = string
}

variable "sub_block" {
  description = "This is the cidr block for the Subnet"
  type        = string
}

variable "ami" {
  description = "Amazon Machine Image"
  type = string
}

variable "instance" {
  description = "Sandbox instance type"
  type = string  
}