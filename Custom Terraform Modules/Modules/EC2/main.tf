# variable "ami" {
#     default = "ami-0614680123427b75e"
# }
# variable "instance_type" {
#     default = "t2.micro"
# }

# resource "aws_instance" "myfirstec2" {
#   ami = var.ami
#   instance_type = var.instance_type

#   tags = {
#     Name = "terraformEc2"
#   }
# }

# output "instance_id" {
#   value = aws_instance.myfirstec2.id
#   domain = "vpc"
# }