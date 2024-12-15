# # Fetching latest OS image (AMI ID) using data source in terraform
# # For more details check => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
# data "aws_ami" "myimage" {
#   most_recent = true
#   owners = ["amazon"]

#   filter {
#     name = "name"
#     values = ["al2023-ami-2023.6.*.0-kernel-6.1-x86_64"] # this is the Name of the AMI, need to fetch this from AWS Console
#   }
# }   

# output "Id_of_AMI" {
#   value = data.aws_ami.myimage.image_id
# }
# output "Creation_Date" {
#   value = data.aws_ami.myimage.creation_date
# }

# # resource "aws_instance" "web" {
# #   ami = data.aws_ami.myimage.image_id
# #   instance_type = "t2.micro"
# # }

