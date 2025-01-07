# resource "aws_iam_user" "example_user" {
#   name = "provisioner-user"

#   provisioner "local-exec" {
#     command = "echo This is creation time provisioner"
#   }

#   provisioner "local-exec" {
#     command = "echo This is destroy time provisioner"
#     when    = destroy
#   }
# }