resource "null_resource" "install" {
  triggers = {
    hash = "${filesha256("${path.module}/Brewfile")}"
  }

  provisioner "local-exec" {
    command = "brew bundle --file=${path.module}/Brewfile"
  }
}
