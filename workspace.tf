# locals {
#   instance_type = {
#     default = "t2.nano"
#     dev     = "t2.micro"
#     prod    = "m5.large"
#   }
# }

# resource "aws_instance" "myec2" {
#   ami = "ami-0614680123427b75e"
#   instance_type = local.instance_type[terraform.workspace] // This instance type will be changed according to the workspace
# }