terraform {
  backend "s3" {
    bucket = "sk-samim-terraform-backend"
    key = "network/terraform.tfstate"
    region = "ap-south-1"
  }
}