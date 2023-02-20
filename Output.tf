output "instance_info" {
  value = {
    instance_name = aws_instance.sandboxec2.tags.Name
    instance_id   = aws_instance.sandboxec2.id
    subnet_cidr    = aws_subnet.subsandbox.cidr_block
    subnet_id      = aws_subnet.subsandbox.id
  }
}