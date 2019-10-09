resource "null_resource" "homebrew" {
  triggers = {
    hash = "${filesha256("${path.module}/scripts/install.sh")}"
  }

  provisioner "local-exec" {
    command = "${path.module}/scripts/install.sh"
  }
}
