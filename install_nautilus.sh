#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

#Install nautilus
proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo apt update -y
proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo aptitude install nautilus -y

#Create Desktop Launcher

cp $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/usr/share/applications/nautilus.desktop $PREFIX/share/applications/nautilus.desktop
sed -i "s/^Name=Nautilus desktop sync client$/Name=Nautilus/"   $PREFIX/share/applications/nautilus.desktop
sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"   $PREFIX/share/applications/nautilus.desktop

cp $PREFIX/share/applications/nautilus.desktop $HOME/Desktop/nautilus.desktop
chmod +x $HOME/Desktop/nautilus.desktop
