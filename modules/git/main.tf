resource "null_resource" "git" {
  triggers = {
    hash = "${filesha256("${path.module}/Brewfile")}"
  }

  provisioner "local-exec" {
    command = "brew bundle --file=${path.module}/Brewfile"
  }
}

resource "local_file" "gitconfig" {
  content = templatefile("${path.module}/templates/gitconfig", {
    user = var.user
    alias = var.alias
  })
  filename        = "${pathexpand("~/.gitconfig")}"
  file_permission = "0644"
}
