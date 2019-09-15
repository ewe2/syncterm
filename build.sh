#!/bin/sh
# syncterm directory is just for builds, we do the rest by hand.

rm -rf $HOME/syncterm
cd src/syncterm
# if you don't want cryptlib define WIHOUT_CRYPTLIB=1 
# define DEBUG=1 for a debug version and remove RELEASE
MAKE_CMD="make -f GNUmakefile PREFIX=$HOME/syncterm RELEASE=1"
$MAKE_CMD
$MAKE_CMD install
