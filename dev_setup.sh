#!/bin/bash

modules=("nopasswd"
		 "homebrew"
		 "zsh"
		 "ssh-keys"
		 "pyenv"
		 "sublime"
		 "thefuck")

for module in "${modules[@]}"
do
	./${module}/install.sh
done
