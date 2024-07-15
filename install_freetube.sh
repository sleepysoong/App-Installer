#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $HOME/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.18.0-beta/freetube_0.18.0_arm64.deb
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo apt install ./freetube_0.18.0_arm64.deb -y
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 rm freetube_0.18.0_arm64.deb

echo "[Desktop Entry]
Name=FreeTube
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 /opt/FreeTube/freetube %U --no-sandbox
Terminal=false
Type=Application
Icon=freetube
StartupWMClass=FreeTube
Comment=A private YouTube client
MimeType=x-scheme-handler/freetube;
Categories=Network;
" > ~/Desktop/freetube.desktop

chmod +x $HOME/Desktop/freetube.desktop
cp $HOME/Desktop/freetube.desktop $HOME/../usr/share/applications/freetube.desktop 
