#!/bin/bash

# install firefox 38 for ubuntu

# extract archive to folder
tar -xjvf firefox-38.0.tar.bz2
rm -rf /opt/firefox38*
mv firefox /opt/firefox38.0
ln -sf /opt/firefox38.0/firefox /usr/bin/firefox

# copy new icon to folder
cp 38icon.png /opt/firefox38.0/38icon.png

# create link for dash
echo "[Desktop Entry]
Name=Firefox
Type=Application
Exec=/opt/firefox38.0/firefox
Terminal=false
Icon=/opt/firefox38.0/38icon.png
Terminal=false
Comment=Firefox 38
NoDisplay=false
Categories=Internet;
Name[en]=firefox38" > /usr/share/applications/firefox.desktop

echo "Firefox installed."
echo "Remember to disable auto update and install the plugins."
echo "Press any key to continue"
read
# open firefox adblock plus extension
nautilus --browser .
# firefox "adblock.xpi"
# firefox "dark_theme.xpi"
# firefox "vimperator.xpi"
# firefox "lastpass.xpi"
# firefox "xmarks.xpi"


