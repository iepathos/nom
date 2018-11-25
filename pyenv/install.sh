#!/bin/bash
# Install latest pyenv on either Linux or OSX

if [[ ! -d ~/.pyenv ]]; then
	echo "Installing pyenv from github"
	curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
else
	echo "Looks like pyenv is already installed, skipping curl step"
fi

if ! grep -Fxq 'export PATH="~/.pyenv/bin:$PATH"' ~/.zshrc; then
	echo 'export PATH="~/.pyenv/bin:$PATH"' >> ~/.zshrc
fi

if ! grep -Fxq 'eval "$(pyenv init -)"' ~/.zshrc; then
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

if ! grep -Fxq 'eval "$(pyenv virtualenv-init -)"' ~/.zshrc; then
	echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
fi

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
echo "Executing pyenv update"
pyenv update

