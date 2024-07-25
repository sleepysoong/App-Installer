#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

# Installation steps for Tor Browser
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install software-properties-common
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S add-apt-repository ppa:mozillateam/ppa
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install firefox-esr -y
echo -e "\nmozillateam에서 rsa1024 warning을 해결하고 있다고 합니다.(3개월전 글에서 확인....) 그대로 쓰면 자동으로 업그레이드 될듯 합니다."
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 curl -LO https://sourceforge.net/projects/tor-browser-ports/files/13.0.9/tor-browser-linux-arm64-13.0.9.tar.xz/download tor.tar.xz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv download tor.tar.xz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 tar -xvf tor.tar.xz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv tor-browser /opt
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm tor.tar.xz

# Create the desktop entry
echo "[Desktop Entry]
Type=Application
Name=Tor Browser
GenericName=Web Browser
Comment=Tor Browser is +1 for privacy and −1 for mass surveillance
Categories=Network;WebBrowser;Security;
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 /opt/tor-browser/Browser/start-tor-browser --no-sandbox
X-TorBrowser-ExecShell=./Browser/start-tor-browser --detach
Icon=tor
StartupWMClass=Tor Browser
Path=
Terminal=false
StartupNotify=false
" > $HOME/Desktop/tor.desktop

chmod +x $HOME/Desktop/tor.desktop
cp $HOME/Desktop/tor.desktop $PREFIX/share/applications/tor.desktop
