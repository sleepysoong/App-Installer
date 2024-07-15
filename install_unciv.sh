#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install openjdk-17-jre -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt -f install
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install libopenal1 zlib1g-dev -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget https://github.com/yairm210/Unciv/releases/download/4.7.11/Unciv.jar
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv Unciv.jar /usr/games

# Create the desktop entry
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Unciv
Comment=
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 java -jar /usr/games/Unciv.jar
Icon=unciv
Categories=Game;
Path=
Terminal=false
StartupNotify=true
" > $HOME/Desktop/unciv.desktop

chmod +x $HOME/Desktop/unciv.desktop
cp $HOME/Desktop/unciv.desktop $PREFIX/share/applications/unciv.desktop
