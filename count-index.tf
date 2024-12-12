# resource "aws_instance" "myec2" {
#   ami = "ami-0614680123427b75e"
#   instance_type = "t2.micro"
#   count = 3

#   tags = {
#     Name = "payments-systems-${count.index}"
#   }
# }

# variable "users" {
#   type = list
#   default = ["alice", "bob", "johncorner"]
# }

# resource "aws_iam_user" "IAM_users" {
#   name = var.users[count.index]
#   count = 3
# }