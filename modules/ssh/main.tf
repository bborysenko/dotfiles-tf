resource "local_file" "gitconfig" {
  content = templatefile("${path.module}/templates/ssh_config", {
  })
  filename        = "${pathexpand("~/.ssh/config")}"
  file_permission = "0600"
  directory_permission = "0700"
}
