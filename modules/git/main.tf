resource "null_resource" "git" {
  triggers = {
    hash = "${filesha256("${path.module}/Brewfile")}"
  }

  provisioner "local-exec" {
    command = "brew bundle --file=${path.module}/Brewfile"
  }
}

data "template_file" "gitconfig" {
  template = "${file("${path.module}/templates/gitconfig")}"
  vars = {
    user_name  = var.user_name
    user_email = var.user_email
  }
}

resource "local_file" "gitconfig" {
  content         = "${data.template_file.gitconfig.rendered}"
  filename        = "${pathexpand("~/.gitconfig")}"
  file_permission = "0644"
}
