# resource "aws_eip" "myEip" {
#   domain = "vpc"
# }

# resource "aws_security_group" "demoSG" {
#   name = "attribute-sg"
# }

# resource "aws_vpc_security_group_ingress_rule" "example" {
#   security_group_id = aws_security_group.demoSG.id
#   cidr_ipv4 = "${aws_eip.myEip.public_ip}/32"
#   ip_protocol = "tcp"
#   from_port = 443
#   to_port = 443
# }