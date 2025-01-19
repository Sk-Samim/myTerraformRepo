//for the first time, in order to execute this code you need to run "terraform init -reconfigure" command
terraform {
  backend "s3" {
    bucket = "sk-samim-terraform-backend"
    key = "network/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-backend-s3-state-lock-table"
  }
}

resource "time_sleep" "wait_150_seconds" {
  create_duration = "150s"
}