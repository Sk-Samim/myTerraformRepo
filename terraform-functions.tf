# variable "region" {
#   default = "ap-south-1"
# }

# variable "hello" {
#   type = list
#   default = ["firstec2", "secondec2"]
# }   

# variable "ami" {
#   type = map
#   default = {
#     "ap-south-1" = "ami-0614680123427b75e"
#     "us-east-1" = "ami-0453ec754f44f9a4a"
#     "us-west-1" = "ami-038bba9a164eb3dc1"
#   }
# }

# resource "aws_instance" "app-dev" {
#   ami = lookup(var.ami,var.region) # allows you to retrieve a specific value from a map
#   instance_type = "t2.micro"
#   count = length(var.hello) # returns the number of elements within a given list, map, or the number of characters in a string

#   tags = {
#     Name = element(var.hello,count.index) # retrieves a specific element from a list at a given index
#     CreationDate = formatdate("DD MM YYYY hh:mm ZZZ", timestamp()) # takes a timestamp as input and converts it into a different time format based on a specified format string
#   }
# }
