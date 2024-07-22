#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget https://github.com/dbeaver/dbeaver/releases/download/24.1.3/dbeaver-ce-24.1.3-linux.gtk.aarch64-nojdk.tar.gz -O thunderbird.tar.gz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 tar -xvzf thunderbird.tar.gz
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv thunderbird /opt/
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo ln -s /opt/thunderbird/thunderbird /usr/bin/thunderbird
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install apt-utils openjdk-11-jdk -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -f thunderbird.tar.gz

echo "[Desktop Entry]
Version=1.0
Name=thunderbird
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 thunderbird --no-sandbox
StartupNotify=true
Terminal=false
Icon=thunderbird
Type=Application
Categories=Development;
" > $HOME/Desktop/thunderbird.desktop

chmod +x $HOME/Desktop/thunderbird.desktop
cp $HOME/Desktop/thunderbird.desktop $PREFIX/share/applications/thunderbird.desktop 