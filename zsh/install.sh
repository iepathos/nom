#!/bin/bash

if command -v zsh >/dev/null 2>&1; then
	echo "zsh found, skipping zsh install"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# replace default theme with my chosen theme
sed -i -e 's/robbyrussel/kolo/g' ~/.zshrc