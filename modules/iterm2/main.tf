resource "null_resource" "install" {
  triggers = {
    hash = "${filesha256("${path.module}/Brewfile")}\n${filesha256("${path.module}/iterm2.sh")}"
  }

  provisioner "local-exec" {
    command = <<-EOT
      brew bundle --file=${path.module}/Brewfile
      ${path.module}/iterm2.sh
    EOT
  }
}
