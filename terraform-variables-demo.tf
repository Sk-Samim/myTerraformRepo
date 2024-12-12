# resource "aws_security_group" "example_SG" {
#   name = "terraform-firewall"
#   description = "Managed with Terraform"
# }

# resource "aws_vpc_security_group_ingress_rule" "app_port" {
#   security_group_id = aws_security_group.example_SG.id
#   cidr_ipv4 = var.vpn_ip
#   from_port = var.app_port
#   ip_protocol = "tcp"
#   to_port = var.app_port
# }

# resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
#   security_group_id = aws_security_group.example_SG.id
#   cidr_ipv4 = var.vpn_ip
#   from_port = var.ssh_port
#   ip_protocol = "tcp"
#   to_port = var.ssh_port
# }

# resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
#   security_group_id = aws_security_group.example_SG.id
#   cidr_ipv4 = var.vpn_ip
#   from_port = var.ftp_port
#   ip_protocol = "tcp"
#   to_port = var.ftp_port
# }