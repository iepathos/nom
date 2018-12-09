#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install slack
elif [[ "$arch" = "Linux" ]]; then
	curl "https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.3-amd64.deb" --output /tmp/slack-desktop-3.3.3-amd64.deb
	sudo dpkg -i /tmp/slack-desktop-3.3.3-amd64.deb
	rm /tmp/slack-desktop-3.3.3-amd64.deb
fi
