#!/bin/bash

if [[ ! -d ~/.ssh ]]; then
	mkdir ~/.ssh
fi

pushd ~/.ssh
	echo "${HOME}/.ssh/id_rsa" | ssh-keygen -q -t rsa -N ""
popd
