terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  content  = "Automated deployment from GitHub Actions!"
  filename = "${path.module}/hello.txt"
}
