terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-test-example-bucket"

  tags = {
    Name        = "terraform-test-example-bucket"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.example.id
}
