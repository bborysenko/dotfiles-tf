module "homebrew" {
  source = "./modules/homebrew"
}

module "git" {
  source = "./modules/git"
  user = var.git.user
}

module "docker" {
  source = "./modules/docker"
}
