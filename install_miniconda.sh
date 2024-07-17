#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-armv7l.sh -O ~/miniconda.sh && chmod +x ~/miniconda.sh && bash ~/miniconda.sh 
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 source ~/.bashrc
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 conda update conda
