terraform {
  backend "s3" {
    region = "ap-southeast-2"
    bucket = "566134440840-intelematics-infrastructure-tfstate-npd-test"
    key    = "inflation"

    #TODO dynamodb_table = "infrastructure-core-LockTable-WJ7XBE8XI9YZ"
  }
}

provider "aws" {
  region = "ap-southeast-2"
}
