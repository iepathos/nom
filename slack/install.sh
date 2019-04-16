#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install slack
elif [[ "$arch" = "Linux" ]]; then
	sudo snap install slack --classic
fi
