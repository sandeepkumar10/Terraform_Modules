resource "aws_instance" "myserver" {
  tags = {
    Name = var.name
  }
  ami                    = var.ami
  instance_type          = var.type
  key_name               = var.key
  availability_zone      = var.zone
  vpc_security_group_ids = [var.sg]
  root_block_device {
    volume_size = var.volume
  }
}
