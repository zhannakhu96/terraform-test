terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resourc "local_file" "hello" {
  content  = "This will break!"
  filename = "${path.module}/hello.txt"
}
