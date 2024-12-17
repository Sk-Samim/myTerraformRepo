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