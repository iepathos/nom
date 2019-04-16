#!/bin/bash

add_str_if_not_in_file() {
        str="${1}"
        filename="${2}"
        if ! grep -Fxq "$str" $filename; then
                echo $str >> $filename
        fi
}


arch=$(uname)
if [ "$arch" = "Linux" ]; then
	sudo apt install snapd -y
	sudo systemctl start snapd
	sudo systemctl enable snapd

	systemctl start apparmor
	systemctl enable apparmor
	add_str_if_not_in_file "export PATH=$PATH:/snap/bin" ~/.zshrc
fi
