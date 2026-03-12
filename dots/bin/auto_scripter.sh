#! /bin/bash

FOLDER="$HOME/dotfiles/bin"
NAME=${1?Error: No name given to file}
FILE="$FOLDER/$NAME"

if [[ -f $FILE  ]]; then
	nvim $FILE
else
	echo '#!/bin/bash' > $FILE
	nvim $FILE -c 'execute "normal 1o"'
	if [[ -s $FILE ]]; then
		chmod +x bin/$NAME
		echo "Script is now executable"
	fi
fi
