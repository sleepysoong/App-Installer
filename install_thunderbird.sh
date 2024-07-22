#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget https://download.mozilla.org/?product=thunderbird-latest&os=linux&lang=ko -O thunderbird.tar.bz2
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 tar -xvzf xjf thunderbird.tar.bz2
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv thunderbird /opt/
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo ln -s /opt/thunderbird/thunderbird /usr/bin/thunderbird
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install apt-utils openjdk-11-jdk -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -f thunderbird.tar.bz2

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