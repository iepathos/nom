#!/bin/bash

arch=$(uname)

if [[ "$arch" = "Darwin" ]]; then
	brew install coreutils
fi
