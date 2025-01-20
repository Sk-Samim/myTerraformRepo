terraform {
  backend "s3" {
    bucket = "sk-samim-terraform-backend"
    key = "security/sg.tfstate"
    region = "ap-south-1"
  }
}