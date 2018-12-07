#!/bin/bash

arch=$(uname)
if [[ "$arch" = "Darwin" ]]; then
	brew install zsh zsh-completions
	sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
elif [[ "$arch" = "Linux" ]]; then
	sudo apt-get install zsh -y
	chsh -s $(which zsh)
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# replace default theme with my chosen theme
sed -i -e 's/robbyrussell/kolo/g' ~/.zshrc