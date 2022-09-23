#!/bin/bash

ln -s /usr/local/libexec/webkit2gtk-4.0/MiniBrowser /usr/local/bin/MiniBrowser
ln -s /usr/local/libexec/webkit2gtk-4.0/MiniBrowser /usr/local/bin/wpe

git clone --depth 1 https://github.com/kelvinkwong/wpe_launcher_scripts /tmp/wpe_launcher_scripts
rm -f /tmp/wpe_launcher_scripts/kill_wpe.sh
cp -f /tmp/wpe_launcher_scripts/*.sh ~/Desktop/
chmod +x ~/Desktop/*.sh