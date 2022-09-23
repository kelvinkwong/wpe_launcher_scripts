#!/bin/bash

mkdir ~/.local/bin
ln -sf /usr/local/libexec/webkit2gtk-4.0/MiniBrowser ~/.local/bin/
ln -sf /usr/local/libexec/webkit2gtk-4.0/MiniBrowser ~/.local/bin/wpe

rm -rf /tmp/wpe_launcher_scripts
git clone --depth 1 https://github.com/kelvinkwong/wpe_launcher_scripts /tmp/wpe_launcher_scripts
rm -f /tmp/wpe_launcher_scripts/{kill_wpe.sh,setup.sh,wpe_inspect_foxtel.sh}
cp -f /tmp/wpe_launcher_scripts/*.sh ~/Desktop/
chmod +x ~/Desktop/*.sh
