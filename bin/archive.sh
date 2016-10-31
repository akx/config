#!/bin/bash
set -e
mkmv () {
	SRCDIR=$1
	DESTDIR=~/Archives/$(date +%Y%m%d)/$2
	[[ -d $DESTDIR ]] || mkdir -p $DESTDIR
	mv $SRCDIR/* $DESTDIR/
	echo "$DESTDIR" $(find $DESTDIR -type f | wc -l)
}

mkmv ~/Downloads Downloads
mkmv ~/Desktop Desktop
