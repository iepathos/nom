#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install thefuck
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install python3-dev python3-pip python3-setuptools
	sudo pip3 install thefuck
fi

if ! grep -Fxq 'eval $(thefuck --alias)' ~/.zshrc; then
	echo 'eval $(thefuck --alias)' >> ~/.zshrc
fi
