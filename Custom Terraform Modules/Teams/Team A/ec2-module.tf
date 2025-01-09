# module "EC2" {
#   source  = "../../Modules/EC2"
# }

# resource "aws_eip" "elasticIP" {
#   instance = module.EC2.instance_id
# }