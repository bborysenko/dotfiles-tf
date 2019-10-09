module "homebrew" {
  source = "./modules/homebrew"
}

module "ssh" {
  source = "./modules/ssh"
}

module "git" {
  source = "./modules/git"
  user = var.git.user
}

module "iterm2" {
  source = "./modules/iterm2"
}

module "docker" {
  source = "./modules/docker"
}
