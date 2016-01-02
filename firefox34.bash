#!/bin/bash

# install firefox 34 for ubuntu

# install wget if needed
command -v wget >/dev/null 2>&1 || { apt-get install wget }

# extract archive to folder
wget ftp.mozilla.org/pub/mozilla.org/firefox/releases/34.0.5/linux-x86_64/en-US/firefox-34.0.5.tar.bz2
tar -xjvf firefox-34.0.5.tar.bz2
rm -rf /opt/firefox*
mv firefox /opt/firefox34.0.5
ln -sf /opt/firefox34.0.5/firefox /usr/bin/firefox

# copy new icon to folder
wget -o /opt/firefox34.0.5/34icon.png https://github.com/budmc29/firefox34/34icon.png

# create link for dash
echo "[Desktop Entry]
Name=Firefox
Type=Application
Exec=/opt/firefox34.0.5/firefox
Terminal=false
Icon=/opt/firefox34.0.5/34icon.png
Terminal=false
Comment=Firefox 34
NoDisplay=false
Categories=Internet;
Name[en]=firefox.desktop" > /usr/share/applications/firefox.desktop

# open firefox adblock plus extension
xdg-open "adblock_plugin.xpi"&
echo "Firefox installed"
