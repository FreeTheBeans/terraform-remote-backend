terraform {

  required_version = ">= 1.0.0"
  backend "s3" {
    //IMPORTANT - Names below must match names in env_vars/local_vars.tfvars
    bucket         = "free-the-beans-terraform-backend"
    key            = "free-the-beans/backend/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "free-the-beans-db-terraform-lock"
  }
}

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      "owner"         = var.aws_resource_owner
      "created-using" = "terraform"
    }
  }

}

resource "aws_s3_bucket" "terraform_state" {
  bucket        = var.bucket_name
  force_destroy = true
}



resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
