terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}



# Provider for the primary region (us-east-1)
provider "aws" {
  region = var.first_region
  alias  = "first"
}

# Provider for the secondary region (us-west-2)
provider "aws" {
  region = var.second_region
  alias  = "second"
}

provider "aws" {
  region = var.third_region
  alias  = "third"
}

# Keep these aliases available for AMI data sources and existing state.
provider "aws" {
  region = var.first_region
  alias  = "primary"
}

provider "aws" {
  region = var.second_region
  alias  = "secondary"
}