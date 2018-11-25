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
