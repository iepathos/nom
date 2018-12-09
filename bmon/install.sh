#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install bmon
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install bmon -y
fi
