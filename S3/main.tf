provider "aws" {
  region  = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile = "default"
}

resource "aws_s3_bucket" "my-test-bucket-1" {

  bucket = "nome-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
    Autor       = "name"
  }

}

output "my-test-bucket" {
  value = aws_s3_bucket.my-test-bucket-1.bucket
}

output "my-test-bucket_arn" {
  value = aws_s3_bucket.my-test-bucket-1.arn
}