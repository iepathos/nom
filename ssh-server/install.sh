#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	sudo systemsetup -setremotelogin on
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install openssh-server -y
fi
