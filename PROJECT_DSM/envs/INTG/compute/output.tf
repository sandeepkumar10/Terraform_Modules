output "myserver" {
  value = [aws_instance.myserver.tags["Name"], aws_instance.myserver.public_ip, aws_instance.myserver.id]
}
