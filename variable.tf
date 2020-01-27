variable "source_region" {
  description = "N-Virginia"
  default = "us-east-1"
}

variable "dest_region" {
  description = "Ohio"
  default = "us-east-2"
}

variable shared_credentials_file {}
variable profile {}

variable vpc_name {
  default="mydemo"
}

variable cidr_block {
  default="20.0.0.0/16"
}

variable env {
  default="dev"
}

variable tags {
  type=map
  default={
    customer="Demo"
    provisioned_by="ait"
  }
}
