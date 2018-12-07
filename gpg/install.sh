#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install gpg
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install gnupg -y
fi
