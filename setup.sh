#!/usr/bin/env bash

[[ -d ~/bin ]] || mkdir ~/bin

cd home
for SRC in $(find . -type f -not -name .DS_Store); do
	TARGET=$(greadlink -f ~/$SRC)
	SOURCE=$(greadlink -f $SRC)

	if [[ -f $TARGET ]]; then
		echo "Not overwriting $TARGET"
	else
		ln -fs $SOURCE $TARGET
	fi
done
