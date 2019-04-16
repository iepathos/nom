#!/bin/bash

modules=("nopasswd"
		 "snap"
		 "homebrew"
		 "zsh"
		 "ssh-keys"
		 "gnu-tools"
		 "gpg"
		 "pyenv"
		 "go"
		 "sublime"
		 "thefuck"
		 "slack"
		 "spotify"
		 "htop"
		 "bmon"
		 "chrome"
		 "docker")

for module in "${modules[@]}"
do
	if [[ -e "${module}/install.sh" ]]; then
		./${module}/install.sh
	else
		echo "Missing ./${module}/install.sh"
	fi
done
