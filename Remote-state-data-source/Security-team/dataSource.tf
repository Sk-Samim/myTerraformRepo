data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "sk-samim-terraform-backend"
    key = "network/eip.tfstate"
    region = "ap-south-1"
  }
}