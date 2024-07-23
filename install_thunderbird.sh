#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)

proot-distro login ubuntu --user $varname --shared-tmp --env DISPLAY=:1.0 <<'EOF'
line='deb [signed-by="/usr/share/keyrings/ubuntu-archive-keyring.gpg"] http://ports.ubuntu.com/ubuntu-ports mantic main universe multiverse'
file="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/sources.list"
if ! grep -Fxq "$line" "$file"; then
  echo "$line" >> "$file"
fi
EOF

proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt install thunderbird

cp $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/usr/share/applications/thunderbird.desktop $PREFIX/share/applications
sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"   $PREFIX/share/applications/thunderbird.desktop

chmod +x $PREFIX/share/applications/thunderbird.desktop 
cp $PREFIX/share/applications/thunderbird.desktop $HOME/Desktop/thunderbird.desktop