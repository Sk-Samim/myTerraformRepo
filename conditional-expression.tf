# variable "environment" {
#   default = "production"
# }

# # resource "aws_instance" "myec2" {
# #  ami = "ami-0614680123427b75e"
# #  instance_type = var.environment == "development" ? "t2.micro" : "m5.large"
# # }

# variable "region" {
#  default = "ap-south-1" 
# }

# resource "aws_instance" "my_ec2" {
#   ami = "ami-0614680123427b75e"
#   instance_type = var.environment == "production" && var.region == "ap-south-1" ? "m5.large" : "t2.micro"
# }