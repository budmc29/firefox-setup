#!/bin/bash

# install firefox 34 for ubuntu

# extract archive to folder
tar -xjvf firefox-34.0.5.tar.bz2
rm -rf /opt/firefox34*
mv firefox /opt/firefox34.0.5
ln -sf /opt/firefox34.0.5/firefox /usr/bin/firefox

# copy new icon to folder
cp 34icon.png /opt/firefox34.0.5/34icon.png

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

echo "Firefox installed"

# open firefox adblock plus extension
nautilus --browser .
# firefox "adblock.xpi"
# firefox "dark_theme.xpi"
# firefox "vimperator.xpi"
# firefox "lastpass.xpi"
# firefox "xmarks.xpi"
