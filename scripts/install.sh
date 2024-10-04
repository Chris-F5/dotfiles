#!/bin/sh

DIR=$(realpath $(dirname $0))
ln -sf $DIR/battery_info.sh      /usr/bin/battery_info
ln -sf $DIR/center.pl            /usr/bin/center
ln -sf $DIR/dates.py             /usr/bin/dates
ln -sf $DIR/inline_exec.pl       /usr/bin/inline_exec
ln -sf $DIR/md.sh                /usr/bin/md
ln -sf $DIR/mdl.sh               /usr/bin/mdl
ln -sf $DIR/node_scripts/htw.mjs /usr/bin/htw
ln -sf $DIR/pied.sh              /usr/bin/pied
ln -sf $DIR/playnext.bash        /usr/bin/playnext
ln -sf $DIR/shuffle.sh           /usr/bin/shuffle
ln -sf $DIR/tw.pl                /usr/bin/tw
