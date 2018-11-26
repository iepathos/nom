#!/bin/bash

# fixme: this has trouble in osx
if ! sudo grep -Fxq "$USER ALL=(ALL) NOPASSWD: ALL" /etc/sudoers; then
	sudo echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
else
	echo "$USER nopasswd entry already in /etc/sudoers"
fi
