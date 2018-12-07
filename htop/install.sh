#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install htop
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install htop -y
fi
