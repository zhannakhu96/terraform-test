terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  content  = "Hello from Terraform in Codespaces!"
  filename = "${path.module}/hello.txt"
}
