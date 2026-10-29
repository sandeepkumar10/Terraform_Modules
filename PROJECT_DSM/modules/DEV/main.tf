module "compute" {
  source = "/root/PROJECT_DSM/envs/DEV/compute"
  name   = "dsmdev_server"
  ami    = "ami-041607313c6a2a618"
  type   = "t3.micro"
  key    = "Muddapu_KP"
  zone   = "us-east-1a"
  sg     = module.security.security_group_id
  volume = 10
}

module "security" {
  source  = "/root/PROJECT_DSM/envs/DEV/security"
  sg_name = "dsmdev_security_group"
  port    = [22, 80, 443, 8080]
}

module "storage" {
  source      = "/root/PROJECT_DSM/envs/DEV/storage"
  bucket_name = "dsmdev.s3.bucket"
}


