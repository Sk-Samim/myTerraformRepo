# resource "aws_security_group" "myFirstSG" {
#   name = "terraform-security_group"
#   description = "Managed with Terraform"

#   tags = {
#     Name = "TerraformSG"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "myFirstSG_ipv4" {
#   security_group_id = aws_security_group.myFirstSG.id
#   ip_protocol = "tcp"
#   cidr_ipv4 = "0.0.0.0/0"
#   from_port = 80
#   to_port = 100
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
#   security_group_id = aws_security_group.myFirstSG.id
#   ip_protocol = "-1" #semantically equivalent to all ports
#   cidr_ipv4 = "0.0.0.0/0" 
# }