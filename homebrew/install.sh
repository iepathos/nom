#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	if command -v brew >/dev/null 2>&1; then
		echo "brew found, skipping homebrew install"
	else
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"	
	fi
else
	echo "homebrew only works with osx, skipping."
fi