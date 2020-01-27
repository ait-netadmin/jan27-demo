terraform {
  required_version = "~> 0.12"

  backend "s3" {
    #region = "us-east-1"
    region = "${var.source_region}"
    #shared_credentials_file = "C:\\Users\\sumon.ALLINDIA\\.aws\\credentials"
    #profile = "aitlredg"
  }
}

#Configure the AWS provider
provider "aws"{
  version = "~> 2.7"
  region = "${var.dest_region}"
  shared_credentials_file = "${shared_credentials_file}"
  profile = "${profile}"

}
