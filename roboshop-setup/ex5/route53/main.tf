resource "aws_route53_record" "record" {
  zone_id = "Z020734418XXZIMNTHHTZ"
  name    = "${var.component}-dev.learndevopseasy.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}