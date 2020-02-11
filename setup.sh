#!/usr/bin/env bash

[[ -d ~/bin ]] || mkdir ~/bin

LOC=$(dirname $(greadlink -f $0))
pushd $LOC/home >& /dev/null

for SRC in $(find . -type f -not -name .DS_Store); do
	TARGET=$HOME/$SRC
	SOURCE=$(greadlink -f $SRC)

	if [[ -f $TARGET ]]; then
		echo "Backing up $TARGET to ${TARGET}.bak"
		mv $TARGET ${TARGET}.bak
	fi

    echo "ln -fs $SOURCE $TARGET"
	ln -fs $SOURCE $TARGET
done

popd >& /dev/null
