#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

#Install Obsidian

proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo -S apt install software-properties-common -y
proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo -S add-apt-repository ppa:nextcloud-devs/client
proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo -S apt update -y
proot-distro login --user $varname ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo -S  apt install install owncloud-client -y

#Create Desktop Launcher

cp $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/usr/share/applications/owncloud.desktop $PREFIX/share/applications/owncloud.desktop
sed -i "s/^Name=ownCloud desktop sync client$/Name=ownCloud/"   $PREFIX/share/applications/owncloud.desktop
sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"   $PREFIX/share/applications/owncloud.desktop

cp $PREFIX/share/applications/owncloud.desktop $HOME/Desktop/owncloud.desktop
chmod +x $HOME/Desktop/owncloud.desktop
