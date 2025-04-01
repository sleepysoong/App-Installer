#!/data/data/com.termux/files/usr/bin/bash
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

prun apt update
prun wget https://packages.microsoft.com/repos/code/pool/main/c/code/code_1.98.2-1741787947_arm64.deb -O code.deb
prun sudo -S dpkg -i ./code.deb -y
prun rm code.deb
prun sudo -S apt install gpg software-properties-common apt-transport-https -y
prun wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | prun sudo apt-key add -

echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Visual Studio Code
Comment=Code Editing. Redefined.
Exec=prun code --no-sandbox
Icon=visual-studio-code
Categories=Development;
Path=
Terminal=false
StartupNotify=false

" > $HOME/Desktop/code.desktop

chmod +x $HOME/Desktop/code.desktop
cp $HOME/Desktop/code.desktop $PREFIX/share/applications/code.desktop 
