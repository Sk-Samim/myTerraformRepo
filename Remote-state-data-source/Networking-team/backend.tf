terraform {
  backend "s3" {
    bucket = "sk-samim-terraform-backend"
    key = "network/eip.tfstate"
    region = "ap-south-1"
  }
}