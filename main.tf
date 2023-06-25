terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }

  backend "s3" {
    region = "us-east-1"
    bucket = "psripati-tf-state"
    key = "state/terraform.tfstate"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "my_ec2_and_sg" {
  source             = "./modules/ec2_and_sg"

  ingress_from__port = var.ingress_from__port
  ingress_to__port = var.ingress_to__port
  security_group_name = var.security_group_name
  ami = var.ami
  instance_type = var.instance_type
}

/*
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = "psripati-tf-state"
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-up-and-running-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
*/