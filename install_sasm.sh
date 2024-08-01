#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $HOME/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sed -i 's/noble/mantic/' $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/sources.list 
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo aptitude install sasm
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 bash -c "echo \"alias sasm='QT_SCALE_FACTOR=2 sasm'\" >> $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/$varname/.bashrc"
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 curl -LO https://answers.launchpad.net/ubuntu/+source/sasm/3.14.0+ds-1/+build/26331457/+files/sasm-dbgsym_3.14.0+ds-1_arm64.ddeb
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo dpkg -i sasm-dbgsym_3.14.0+ds-1_arm64.ddeb
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm sasm-dbgsym_3.14.0+ds-1_arm64.ddeb

# Create the desktop entry
echo "[Desktop Entry]
Type=Application
Name=sasm
GenericName=sasm
Comment=sasm
Exec=prun QT_SCALE_FACTOR=2 sasm
Categories=Development;
Icon=naver-whale
Path=
Terminal=false
StartupNotify=false
" > $HOME/Desktop/sasm.desktop

chmod +x $HOME/Desktop/sasm.desktop
cp $HOME/Desktop/sasm.desktop $PREFIX/share/applications/sasm.desktop
