##!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 apt update
proot-distro login ubuntu --shared-tmp -- env DISPLAY=:1.0 sudo aptitude install vlc -y

echo "[Desktop Entry]
Version=1.0
Type=Application
Name=VLC media player
Comment=Read, capture, broadcast your multimedia streams
Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 /usr/bin/vlc --started-from-file %U
Icon=vlc
Categories=Video;
Path=
Terminal=false
StartupNotify=false

" > $HOME/Desktop/vlc.desktop

chmod +x $HOME/Desktop/vlc.desktop
cp $HOME/Desktop/vlc.desktop $PREFIX/share/applications/vlc.desktop 
