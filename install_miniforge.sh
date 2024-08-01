#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo aptitude install wget python3 python3-pip -y
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 wget wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 chmod +x Miniforge3-Linux-aarch64.sh
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 bash Miniforge3-Linux-aarch64.sh
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm Miniforge3-Linux-aarch64.sh
