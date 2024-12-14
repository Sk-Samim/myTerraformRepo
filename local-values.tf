# variable "tags" {
#   type = map
#   default = {
#     Team = "security-team"
#     CreationDate = "date -> 14-12-2024"
#   }
# }

# locals {
#   default = {
#     Team = "security-teams"
#     CreationDate = "date -> ${formatdate("DD-MM-YYYY",timestamp())}" # these kind of operation are not applicable for variables
#   }
# }

# resource "aws_security_group" "sg_01" {
#   name = "app_firewall"
#   tags = local.default
# }