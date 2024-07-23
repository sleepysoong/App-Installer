#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sed -i 's/noble/mantic/g' $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/source.list 
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install thunderbird -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sed -i 's/mantic/noble/g' $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/source.list 

cp $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/usr/share/applications/thunderbird.desktop $PREFIX/share/applications
sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"   $PREFIX/share/applications/thunderbird.desktop

chmod +x $PREFIX/share/applications/thunderbird.desktop 
cp $PREFIX/share/applications/thunderbird.desktop $HOME/Desktop/thunderbird.desktop