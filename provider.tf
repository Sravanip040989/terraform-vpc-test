terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }

  backend "s3" {
    bucket = "funbag-remote-state"
    key    = "ec2-module-test"
    region = "us-east-1"
     dynamodb_table = "funbag-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}