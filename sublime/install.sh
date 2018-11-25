#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install sublime-text
elif [[ "$arch" = "Linux" ]]; then
	sudo snap install sublime-text
fi

if ! grep -Fxq 'alias s.="subl ."' ~/.zshrc; then
	echo 'alias s.="subl ."' >> ~/.zshrc
fi