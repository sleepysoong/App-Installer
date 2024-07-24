#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/home/*)
appname="burpsuite"

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 curl -L -o burpsuite_community_linux_arm64.sh 'https://portswigger.net/burp/releases/startdownload?product=community&version=2024.5.5&type=linuxarm64'
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 chmod +x burpsuite_community_linux_arm64.sh
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo ./burpsuite_community_linux_arm64.sh

echo "[Desktop Entry]
Version=1.0
Name=$appname
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 /home/$varname/BurpSuiteCommunity/BurpSuiteCommunity
StartupNotify=true
Terminal=false
Icon=$appname
Type=Application
Categories=Development;
" > $HOME/Desktop/$appname.desktop

chmod +x $HOME/Desktop/$appname.desktop
cp $HOME/Desktop/$appname.desktop $PREFIX/share/applications/$appname.desktop 