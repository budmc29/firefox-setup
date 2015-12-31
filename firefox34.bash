#!/bin/bash

# install firefox 34 for ubuntu

wget ftp.mozilla.org/pub/mozilla.org/firefox/releases/34.0.5/linux-x86_64/en-US/firefox-34.0.5.tar.bz2
tar -xjvf firefox-34.0.5.tar.bz2
rm -rf /opt/firefox*
mv firefox /opt/firefox34.0.5
ln -sf /opt/firefox34.0.5/firefox /usr/bin/firefox

# open firefox adblock plus extension
xdg-open "adblock_plugin.xpi"&
echo "Firefox installed"
