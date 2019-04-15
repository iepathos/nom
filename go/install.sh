#!/bin/bash

arch=$(uname)
GO_VERSION=1.12.2

if [ "$arch" = "Linux" ]; then
	sudo snap install go
elif [ "$arch" = "Darwin" ]; then
	brew install go
fi

add_str_if_not_in_file() {
	str="${1}"
	filename="${2}"
	if ! grep -Fxq "$str" $filename; then
		echo $str >> $filename
	fi
}

add_str_if_not_in_file 'export GOPATH=~/go' ~/.zshrc
add_str_if_not_in_file 'export PATH=$PATH:$GOPATH/bin' ~/.zshrc
