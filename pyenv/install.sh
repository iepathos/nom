#!/bin/bash
# Install latest pyenv on either Linux or OSX
arch=$(uname)

if [[ ! -d ~/.pyenv ]]; then
	echo "Installing pyenv from github"
	if [[ "$arch" = "Darwin" ]]; then
		brew install readline xz -y
	elif [[ "$arch" = "Linux" ]]; then
		sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev
	fi
	curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
else
	echo "Looks like pyenv is already installed, skipping curl step"
fi

if ! grep -Fxq 'export PYENV_ROOT="$HOME/.pyenv"' ~/.zshrc; then
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
fi

if ! grep -Fxq 'export PATH="$PATH:$PYENV_ROOT/bin"' ~/.zshrc; then
	echo 'export PATH="$PATH:$PYENV_ROOT/bin"' >> ~/.zshrc
fi

if ! grep -Fxq 'eval "$(pyenv init -)"' ~/.zshrc; then
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

if ! grep -Fxq 'eval "$(pyenv virtualenv-init -)"' ~/.zshrc; then
	echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
echo "Executing pyenv update"
pyenv update

