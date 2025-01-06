# resource "aws_security_group" "example" {
#   name        = "SG.${count.index}"
#   description = "Example security group"
#   count = 3
# }

# # // to get attribute of a single resource with index 0
# # output "security_group_ids" {
# #   value = aws_security_group.example[0].id
# # }

# // to get attribute of multiple resources with Splat Expresion
# output "security_group_ids" {
#   value = aws_security_group.example[*].id
# }

# variable "mymap" {
#   default = {
#     dev = "ami-123"
#     prod = "ami-456"
#   }
# }

# resource "aws_instance" "web" {
#   for_each = var.mymap
#   ami = each.value
#   instance_type = "t2.micro"

#   tags = {
#     Name = each.key
#   }
# }