module "provision_ec2" {
  source = "../module"
  amiid  = var.amiid
  cidr   = var.cidr
  ins_type = var.ins_type
  keyname = var.keyname
  sgname = var.sgname
  tag = var.tag
}