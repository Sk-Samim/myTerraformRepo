variable "sensitive_content" {
  sensitive = true //This parameter will help to hide the password which is assigned to default.
  default = "supersecretpassw0rd"
}

resource "local_file" "foo" {
  content = var.sensitive_content
  filename = "password.txt"
}