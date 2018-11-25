#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install docker
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get remove docker docker-engine docker.io -y
	sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-get update -y
    sudo apt-get install docker-ce -y
fi
