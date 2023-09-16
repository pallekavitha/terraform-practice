terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
  backend "s3" {
    bucket = "roboshop-remote-states"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
  }

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security issue occurs
   region  = "us-east-1"
}