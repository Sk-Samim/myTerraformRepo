# resource "aws_instance" "myec2" {
#   ami = "ami-0614680123427b75e"
#   instance_type = "t2.micro"

#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} >> server_ip.txt"
#   }
# }