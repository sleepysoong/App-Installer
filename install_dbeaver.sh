#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.aarch64-nojdk.tar.gz -O dbeaver.tar.gz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 tar -xvzf ./dbeaver.tar.gz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv dbeaver /opt/
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo ln -s /opt/dbeaver/dbeaver /usr/bin/dbeaver
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install apt-utils openjdk-11-jdk -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -f dbeaver.tar.gz

echo "[Desktop Entry]
Version=1.0
Name=dbeaver
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 dbeaver --no-sandbox
StartupNotify=true
Terminal=false
Icon=dbeaver
Type=Application
Categories=Development;
" > $HOME/Desktop/dbeaver.desktop

chmod +x $HOME/Desktop/dbeaver.desktop
cp $HOME/Desktop/dbeaver.desktop $PREFIX/share/applications/dbeaver.desktop 