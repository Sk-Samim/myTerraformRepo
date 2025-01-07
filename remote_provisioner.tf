# #Security group ports list
# variable "sg_ports" {
#   type = list(number)
#   description = "list of ingress ports"
#   default = [22, 80, 443]
# }

# # Create a Security Group with ingress rules on port 22 and 80
# resource "aws_security_group" "web_sg" {
#   name        = "web_sg"
#   description = "Allow HTTP and SSH access"

#   dynamic "ingress" {
#     for_each = var.sg_ports
#     iterator = port # this is used for the iterator name, if not mentioned then have to use the local name of the dynamic block.
#     content {
#       from_port = port.value
#       to_port = port.value
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
  
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"  # Allow all outbound traffic
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# #creating ec2 instance and associate it with the above security group
# resource "aws_instance" "myec2" {
#   ami = "ami-0614680123427b75e"
#   instance_type = "t2.micro"
#   key_name = "terraform-key"
#   security_groups = [aws_security_group.web_sg.name]

#   #EC2 instance will depend on the security group creation
#   depends_on = [aws_security_group.web_sg]  

#   #Establishing connection to the ec2 instance using ssh and private key
#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     private_key = file("./terraform-key.pem")
#     host = self.public_ip   
#   }

#   #installing nginx using remote-exec provisioner
#   provisioner "remote-exec" {
#     inline = [ 
#         "sudo yum -y install nginx",
#         "sudo systemctl start nginx",
#      ]
#   }
# }