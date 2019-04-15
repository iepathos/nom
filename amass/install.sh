#!/bin/bash

arch=$(uname)

if [ "$arch" = "Linux" ]; then
	sudo snap install amass
elif [ "$arch" = "Darwin" ]; then
	# requires go to have been installed already
	go get -u github.com/OWASP/Amass/...
fi
