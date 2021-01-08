resource "aws_instance" "demo" {
  count                   = 2
  ami                     = var.ami
  instance_type           = var.type

  tags = {
    name = "Demo VM ${count.index}"
  }
}