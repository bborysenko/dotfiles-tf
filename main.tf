module "homebrew" {
  source = "./modules/homebrew"
}

module "git" {
  source = "./modules/git"

  user_name  = "Borys Borysenko"
  user_email = "borys.borysenko@gmail.com"
}

module "docker" {
  source = "./modules/docker"
}
