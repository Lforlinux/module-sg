
variable "sg_name" {}
variable "tags" {}
variable "description" {}
variable "name" {}

resource "aws_security_group" "sg" {
for_each = toset(var.sg_name)
name = each.value
description = var.description
tags = var.tags
vpc_id = aws_vpc.main.id

ingress {
description = "manual sg import eg"
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}