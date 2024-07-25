#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $HOME/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sed -i 's/noble/mantic/' $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/sources.list 
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install sasm -y

# Create the desktop entry
echo "[Desktop Entry]
Type=Application
Name=sasm
GenericName=sasm
Comment=sasm
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sasm
Categories=Development;
Icon=sasm
Path=
Terminal=false
StartupNotify=false
" > $HOME/Desktop/sasm.desktop

chmod +x $HOME/Desktop/sasm.desktop
cp $HOME/Desktop/sasm.desktop $PREFIX/share/applications/sasm.desktop
