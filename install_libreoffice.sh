#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo apt install libreoffice -y
cp $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/usr/share/applications/libreoffice* $PREFIX/share/applications
sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"   $PREFIX/share/applications/libreoffice*

