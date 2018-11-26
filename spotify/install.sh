#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install spotify
elif [[ "$arch" = "Linux" ]]; then
	sudo snap install spotify
fi
