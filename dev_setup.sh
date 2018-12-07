#!/bin/bash

modules=("nopasswd"
		 "homebrew"
		 "zsh"
		 "ssh-keys"
		 "pyenv"
		 "sublime"
		 "thefuck"
		 "slack"
		 "spotify"
		 "htop")

for module in "${modules[@]}"
do
	./${module}/install.sh
done
