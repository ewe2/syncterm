#!/bin/sh

sudo rm -rf /opt/syncterm
cd src/syncterm
MAKE_CMD="make -f GNUmakefile WITHOUT_CRYPTLIB=1 PREFIX=/opt/syncterm RELEASE=1"
$MAKE_CMD
sudo $MAKE_CMD install
