terraform {
  backend "s3" {
    bucket = "tf-backend-08" # this must be your s3 bucket name
    key    = "networking/dev/vpc-peering/demo/terraform.tfstate"
    region = "ap-south-1"
  }
}
