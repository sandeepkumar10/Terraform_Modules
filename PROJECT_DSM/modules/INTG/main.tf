module "intg_compute" {
  source = "/root/PROJECT_DSM/envs/INTG/compute"
  name   = "dsmintg_server"
  ami    = "ami-0c7dc2f4e28e6e66e"
  type   = "c7i-flex.large"
  key    = "Ohio_KP"
  zone   = "us-east-2b"
  sg     = module.intg_security.security_group_id
  volume = 12
}

module "intg_security" {
  source  = "/root/PROJECT_DSM/envs/INTG/security"
  sg_name = "dsmintg_security_group"
  port    = [22, 80, 443, 8000]
}

module "intg_storage" {
  source      = "/root/PROJECT_DSM/envs/INTG/storage"
  bucket_name = "dsmintg.s3.bucket"
}


