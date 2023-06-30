terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59"

      configuration_aliases = [aws.us]
    }
  }

  required_version = "~> 1.0"
}

provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key

  default_tags {
    tags = {}
  }
}

provider "aws" {
  alias      = "us"
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key

  default_tags {
    tags = {}
  }
}
