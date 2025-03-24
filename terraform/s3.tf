resource "aws_s3_bucket" "terraform_state" {
  bucket = "eks-3-tier-pro"  # Replace with a unique bucket name
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
