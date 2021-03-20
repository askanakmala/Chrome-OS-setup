#!/bin/sh
ccd() {
rm -rf ".C_installer.sh"
}
trap "ccd" INT TERM EXIT
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
sc="c_part.sh"
path0="setbysytem"
multiboot=true
ngh="https://raw.githubusercontent.com/askanakmala/Chrome-OS-setup/main/c_part.sh"
sh=chromeos-install.sh
wget -O .C_installer.sh -q $ngh
sudo sh .C_installer.sh
else
    echo "You are Offline. Please connect to the internet before running installation"
fi
