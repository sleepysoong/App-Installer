#!/data/data/com.termux/files/usr/bin/bash

pkg update && pkg upgrade -y
pkg install thunderbird -y

echo "[Desktop Entry]
Version=1.0
Name=thunderbird
Comment=thunderbird
Exec=thunderbird
StartupNotify=false
Terminal=true
Icon=thunderbird
Type=Application
Categories=Office;
" > $HOME/Desktop/thunderbird.desktop

chmod +x $HOME/Desktop/thunderbird.desktop 