#!/bin/bash

if [[ ! -d ~/.ssh ]]; then
	mkdir ~/.ssh
fi

if [[ ! -e ${HOME}/.ssh/id_rsa ]]; then
	pushd ~/.ssh
		echo "${HOME}/.ssh/id_rsa" | ssh-keygen -q -t rsa -N ""
	popd
else
	echo "${HOME}/.ssh/id_rsa found, skipping ssh-keygen"
fi


arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	sudo systemsetup -setremotelogin on
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install openssh-server -y
fi
