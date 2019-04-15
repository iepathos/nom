#!/bin/bash

# penetration testing related tools

modules=("go"
		 "amass"
		 "seclists"
		 )

for module in "${modules[@]}"
do
	if [[ -e "${module}/install.sh" ]]; then
		./${module}/install.sh
	else
		echo "Missing ./${module}/install.sh"
	fi
done
