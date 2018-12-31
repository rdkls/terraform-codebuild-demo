resource "aws_s3_bucket" "default" {
  bucket = "npd-test-tf-created"
  acl    = "private"
}
