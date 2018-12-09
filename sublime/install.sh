#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew cask install sublime-text
elif [[ "$arch" = "Linux" ]]; then
	sudo snap install sublime-text
fi

add_str_if_not_in_file() {
	str="${1}"
	filename="${2}"
	if ! grep -Fxq "$str" $filename; then
		echo $str >> $filename
	fi
}

add_str_if_not_in_file '# sublime' ~/.zshrc
add_str_if_not_in_file 'alias s.="subl ."' ~/.zshrc
