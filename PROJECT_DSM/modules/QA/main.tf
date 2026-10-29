module "qa_compute" {
  source = "/root/PROJECT_DSM/envs/QA/compute"
  name   = "dsmqa_server"
  ami    = "ami-002d8bd6d798d0d73"
  type   = "m7i-flex.large"
  key    = "Terrafrom_KP"
  zone   = "ap-south-2c"
  sg     = module.qa_security.security_group_id
  volume = 15
}

module "qa_security" {
  source  = "/root/PROJECT_DSM/envs/QA/security"
  sg_name = "dsmqa_security_group"
  port    = [22, 80, 443, 9000]
}

module "qa_storage" {
  source      = "/root/PROJECT_DSM/envs/QA/storage"
  bucket_name = "dsmqa.s3.bucket"
}


