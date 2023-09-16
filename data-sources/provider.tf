terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security issue occurs
   region  = "ap-south-1"
}