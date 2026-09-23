
terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "shil-ce13"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "ghactions-ghdemo32"
  tags = {
    Purpose = "github-actions-workshop"
  }
}