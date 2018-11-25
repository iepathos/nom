#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# replace default theme with my chosen theme
sed -i -e 's/robbyrussel/kolo/g' ~/.zshrc