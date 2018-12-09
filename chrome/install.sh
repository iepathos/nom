#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install google-chrome
elif [[ "$arch" = "Linux" ]]; then
	curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
fi
