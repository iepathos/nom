#!/bin/bash

# fixme: this has trouble in osx
arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	echo "nopasswd script has trouble in osx, skipping for the moment"
elif [[ "$arch" = "Linux" ]]; then
	if ! sudo grep -Fxq "$USER ALL=(ALL) NOPASSWD: ALL" /etc/sudoers; then
		sudo echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
	else
		echo "$USER nopasswd entry already in /etc/sudoers"
	fi
fi
