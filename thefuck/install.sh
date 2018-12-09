#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install thefuck
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install python3-dev python3-pip python3-setuptools
	sudo pip3 install thefuck
fi

add_str_if_not_in_file() {
	str="${1}"
	filename="${2}"
	if ! grep -Fxq "$str" $filename; then
		echo $str >> $filename
	fi
}

add_str_if_not_in_file '# thefuck' ~/.zshrc
add_str_if_not_in_file 'eval $(thefuck --alias)' ~/.zshrc
