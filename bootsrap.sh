#!/usr/bin/env bash

set -eux

TF_VERSION="0.12.10"

mkdir -p ~/.dotfiles/.terraform/bin

if [ ! -x ~/.dotfiles/.terraform/bin ]; then
  curl -sSf https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_darwin_amd64.zip -o /tmp/terraform.zip
  unzip /tmp/terraform.zip -d ~/.init/.terraform/bin
  rm -f /tmp/terraform.zip
fi

if [ ! -f terraform.tfstate ]; then
  .terraform/bin/terraform init
  .terraform/bin/terraform apply -auto-approve
fi
