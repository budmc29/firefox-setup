#!/bin/bash

# Install Firefox esr for ubuntu

# Extract archive to folder
tar -xjvf firefox-45.0esr.tar.bz2
rm -rf /opt/firefox*
rm /usr/bin/firefox
mv firefox /opt/firefox45
ln -s /opt/firefox45/firefox /usr/bin/firefox

# Copy new icon to folder
cp firefox_icon.png /opt/firefox45/firefox_icon.png

# Create link for dash
echo "[Desktop Entry]
Name=Firefox
Type=Application
Exec=/opt/firefox45/firefox
Terminal=false
Icon=/opt/firefox45/firefox_icon.png
Terminal=false
Comment=Firefox 45 ESR
NoDisplay=false
Categories=Internet;
Name[en]=firefox45" > /usr/share/applications/firefox.desktop

echo "Firefox installed."
