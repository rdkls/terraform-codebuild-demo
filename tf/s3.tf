resource "aws_s3_bucket" "default" {
  bucket = "npd-test-tf-created-no3"
  acl    = "private"
}

resource "aws_s3_bucket" "default2" {
  bucket = "npd-test-tf-created-no2"
  acl    = "private"
}
