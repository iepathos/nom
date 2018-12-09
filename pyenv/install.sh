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

add_str_if_not_in_file() {
	str="${1}"
	filename="${2}"
	if ! grep -Fxq "$str" $filename; then
		echo $str >> $filename
	fi
}

add_str_if_not_in_file '# pyenv' ~/.zshrc
add_str_if_not_in_file 'export PYENV_ROOT="$HOME/.pyenv"' ~/.zshrc
add_str_if_not_in_file 'export PATH="$PATH:$PYENV_ROOT/bin"' ~/.zshrc
add_str_if_not_in_file 'eval "$(pyenv init -)"' ~/.zshrc
add_str_if_not_in_file 'eval "$(pyenv virtualenv-init -)"' ~/.zshrc
add_str_if_not_in_file 'export PYENV_VIRTUALENV_DISABLE_PROMPT=1' ~/.zshrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
echo "Executing pyenv update"
pyenv update

