#!/bin/bash

add_str_if_not_in_file() {
	str="${1}"
	filename="${2}"
	if ! grep -Fxq "$str" $filename; then
		echo $str >> $filename
	fi
}


arch=$(uname)

if [ "$arch" = "Darwin" ]; then
	brew install ripgrep
elif [ "$arch" = "Linux" ]; then
	sudo snap install ripgrep --classic
	add_str_if_not_in_file "alias rg=ripgrep.rg" ~/.zshrc
fi
