#!/bin/bash
varname=$(basename $HOME/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install openjdk-17-jre -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt -f install 
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install libopenal1 zlib1g-dev -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget -O ShatteredPD.jar https://github.com/00-Evan/shattered-pixel-dungeon/releases/download/v2.1.4/ShatteredPD-v2.1.4-Java.jar
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mkdir -p /opt/ShatteredPD
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 mv ShatteredPD.jar /opt/ShatteredPD/

# Create the desktop entry
echo "[Desktop Entry]
Encoding=UTF-8
Name=Shattered Pixel Dungeon
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 java -jar /opt/ShatteredPD/ShatteredPD.jar
Terminal=false
Icon=com.shatteredpixel.shatteredpixeldungeon
Type=Application
Categories=Game;
Comment=Roguelike Dungeon Crawler RPG with pixel art graphics.
StartupNotify=true
Path=
" > $HOME/Desktop/shatteredpd.desktop

chmod +x $HOME/Desktop/shatteredpd.desktop
cp $HOME/Desktop/shatteredpd.desktop $HOME/../usr/share/applications/shatteredpd.desktop
