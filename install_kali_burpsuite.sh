#!/data/data/com.termux/files/usr/bin/bash

#This script installs aarch64 .tar.xz or .tar.gz into ubuntu proot /opt directory and creates a desktop and menu launcher
varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/home/*)
appname="burpsuite"

#Do not edit below here unless required
# Process command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --install)
            install=true
            shift
            ;;
        --uninstall)
            uninstall=true
            shift
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

if [ "$install" = true ]; then
    proot-distro login BackTrack --shared-tmp -- env DISPLAY=:1.0 apt update
    proot-distro login BackTrack --shared-tmp -- env DISPLAY=:1.0 sudo apt install $appname -y
    cp $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/usr/share/applications/kali-$appname.desktop $PREFIX/share/applications
    sed -i "s/^Exec=\(.*\)$/Exec=proot-distro login BackTrack --user $varname --shared-tmp -- env DISPLAY=:1.0 \1/"  $PREFIX/share/applications/kali-$appname.desktop

    category="Application"
    desktop_file="$HOME/Desktop/kali-$appname.desktop"

    #NOTE: Do not remove prun from Exec command
    cp $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/usr/share/applications/kali-$appname.desktop $HOME/Desktop/

    chmod +x "$desktop_file"
    cp "$desktop_file" $PREFIX/usr/share/applications
    echo "Installation completed."

elif [ "$uninstall" = true ]; then
    echo "Uninstalling..."
    uninstall="krun sudo apt purge"
    $uninstall $appname -y
    desktop_file="$HOME/Desktop/kali-$appname.desktop"
    rm "$desktop_file"
    rm "$PREFIX/usr/share/applications/kali-$appname.desktop"

    echo "Uninstallation completed."
else
    echo "No valid option provided. Use --install or --uninstall."
    exit 1
fi
