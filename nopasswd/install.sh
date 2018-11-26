#!/bin/bash

if ! sudo grep -Fxq "$USER ALL=(ALL) NOPASSWD: ALL" /etc/sudoers; then
	echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
else
	echo "$USER nopasswd entry already in /etc/sudoers"
fi
