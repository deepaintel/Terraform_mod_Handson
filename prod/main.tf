module "provision_ec2" {
  source = "git::https://github.com/deepaintel/Terraform_mod_Handson.git//module?ref=main"
  amiid  = var.amiid
  cidr   = var.cidr
  ins_type = var.ins_type
  keyname = var.keyname
  sgname = var.sgname
  tag = var.tag
}