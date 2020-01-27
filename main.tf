terraform {
  required_version = "~> 0.12"

  backend "s3" {
    #region = "us-east-1"
    region = "${var.source_region}"
    #shared_credentials_file = "C:\\Users\\sumon.ALLINDIA\\.aws\\credentials"
    #profile = "aitlredg"
  }
}

# locals {
#   shared_credentials_file = "${var.shared_credentials_file}"
#   profile = "${var.profile}"
# }

#Configure the AWS provider
provider "aws" {
  version = "~> 2.7"
  region = "${var.dest_region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile = "${var.profile}"

}

module "vpc" {
  source="./infra/module/vpc"
  tags="${merge("${var.tags}",map("Name", "${var.vpc_name}-${var.env}"))}"
  cidr_block="${var.cidr_block}"
}
