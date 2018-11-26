#!/bin/bash

modules=("nopasswd" "homebrew" "zsh" "ssh-keys" "pyenv" "sublime" "thefuck")

for i in "${modules[@]}"
do
	./${i}/install.sh
done
