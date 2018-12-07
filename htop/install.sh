#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]];
	brew install htop
elif [[ "$arch" = "Linux" ]];
	sudo apt-get install htop -y
fi
