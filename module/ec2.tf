resource "aws_instance" "moddemo" {
   ami = var.amiid
   instance_type = var.ins_type
   key_name = var.keyname
   security_groups = [var.sgname]

    tags = {
      Name = var.tag
    }
}