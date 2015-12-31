# Install firefox version 34 (december 2014)

```
wget ftp.mozilla.org/pub/mozilla.org/firefox/releases/34.0.5/linux-x86_64/en-US/firefox-34.0.5.tar.bz2
tar -xjvf firefox-34.0.5.tar.bz2
sudo rm -rf /opt/firefox*
sudo mv firefox /opt/firefox34.0.5
sudo ln -sf /opt/firefox34.0.5/firefox /usr/bin/firefox
```


