#!/data/data/com.termux/files/usr/bin/bash

pkg update
pkg upgrade -y
pkg install thunderbird

echo "[Desktop Entry]
Version=1.0
Name=thunderbird
Exec=thunderbird
StartupNotify=true
Terminal=true
Icon=thunderbird
Type=Application
Categories=Development;
" > $HOME/Desktop/thunderbird.desktop

chmod +x $HOME/Desktop/thunderbird.desktop
cp $HOME/Desktop/thunderbird.desktop $PREFIX/share/applications/thunderbird.desktop 