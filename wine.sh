#!/bin/bash
sudo apt update -y
sudo apt install gpg -y 

wget https://ryanfortner.github.io/box64-debs/box64.list -O /etc/apt/sources.list.d/box64.list
wget -qO- https://ryanfortner.github.io/box64-debs/KEY.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/box64-debs-archive-keyring.gpg

wget https://ryanfortner.github.io/box86-debs/box86.list -O /etc/apt/sources.list.d/box86.list
wget -qO- https://ryanfortner.github.io/box86-debs/KEY.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/box86-debs-archive-keyring.gpg 

sudo apt update -y
sudo apt install box64-android -y

dpkg --add-architecture armhf
sudo apt update -y
sudo apt install libc6:armhf -y
sudo apt install box86-android:armhf -y

sudo apt install nano cabextract libfreetype6 libfreetype6:armhf libfontconfig libfontconfig:armhf libxext6 libxext6:armhf libxinerama-dev libxinerama-dev:armhf libxxf86vm1 libxxf86vm1:armhf libxrender1 libxrender1:armhf libxcomposite1 libxcomposite1:armhf libxrandr2 libxrandr2:armhf libxi6 libxi6:armhf libxcursor1 libxcursor1:armhf libvulkan-dev libvulkan-dev:armhf -y

cd ~/
wget https://github.com/Kron4ek/Wine-Builds/releases/download/9.7/wine-9.7-amd64.tar.xz
wget https://github.com/Kron4ek/Wine-Builds/releases/download/9.7/wine-9.7-x86.tar.xz
tar xvf wine-9.7-amd64.tar.xz
tar xvf wine-9.7-x86.tar.xz
rm wine-9.7-amd64.tar.xz wine-9.7-x86.tar.xz
mv wine-9.7-amd64 wine64
mv wine-9.7-x86 wine32

echo '#!/bin/bash 
export WINEPREFIX=~/.wine32
export DISPLAY=:1
box86 '"$HOME/wine32/bin/wine "'"$@"' > /usr/local/bin/wine32
chmod +x /usr/local/bin/wine32

echo '#!/bin/bash 
export WINEPREFIX=~/.wine64
export DISPLAY=:1
box64 '"$HOME/wine64/bin/wine64 "'"$@"' > /usr/local/bin/wine64
chmod +x /usr/local/bin/wine64

echo '
export BOX86_PATH=~/wine32/bin/
export BOX86_LD_LIBRARY_PATH=~/wine32/lib/wine/i386-unix/:/lib/i386-linux-gnu/:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/
export BOX64_PATH=~/wine64/bin/
export BOX64_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/:/usr/lib/x86_64-linux-gnu' >> ~/.bashrc

source ~/.bashrc


WINEPREFIX=~/.wine32 box86 wine32 winecfg
WINEPREFIX=~/.wine64 box64 wine64 winecfg

wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks

chmod +x winetricks

mv winetricks /usr/local/bin/

echo '#!/bin/bash
export BOX86_NOBANNER=1 WINE=wine32 WINEPREFIX=~/.wine32 WINESERVER=~/wine32/bin/wineserver
/usr/local/bin/winetricks "$@"' > /usr/local/bin/winetricks32

chmod +x /usr/local/bin/winetricks32

echo '#!/bin/bash
export BOX64_NOBANNER=1 WINE=wine64 WINEPREFIX=~/.wine64 WINESERVER=~/wine64/bin/wineserver
/usr/local/bin/winetricks "$@"' > /usr/local/bin/winetricks64

chmod +x /usr/local/bin/winetricks64

sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:armhf libvulkan1 libvulkan1:armhf -y

tar xvf dxvk-2.3.1.tar.gz

cd 
cp ~/dxvk-2.3.1/x32/* ~/.wine32/drive_c/windows/system32
cp ~/dxvk-2.3.1/x32/* ~/.wine64/drive_c/windows/system32
cp ~/dxvk-2.3.1/x64/* ~/.wine64/drive_c/windows/syswow64

wine32 winecfg
wine64 winecfg
