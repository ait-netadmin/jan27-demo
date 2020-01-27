output vpc_cidr_block {
  value="${var.cidr_block}"
}

output vpc_id {
  value="${module.vpc.vpc_id}"
}
