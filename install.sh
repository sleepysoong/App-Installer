#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)
kaliusername=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/home/*)

# Get the absolute path for the script's directory
script_dir=$(realpath "$(dirname "$0")")

# Absolute paths for required files and directories
installed_rootfs_dir="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home"
owncloud_desktop="$PREFIX/share/applications/owncloud.desktop"
tor_desktop="$PREFIX/share/applications/tor.desktop"
webcord_desktop="$PREFIX/share/applications/webcord.desktop"
vivaldi_desktop="$PREFIX/share/applications/vivaldi.desktop"
brave_desktop="$PREFIX/share/applications/brave.desktop"
obsidian_desktop="$PREFIX/share/applications/obsidian.desktop"
libreoffice_desktop="$PREFIX/share/applications/libreoffice-base.desktop"
code_desktop="$PREFIX/share/applications/code.desktop"
vlc_desktop="$PREFIX/share/applications/vlc.desktop"
notion_desktop="$PREFIX/share/applications/notion.desktop"
pycharm_desktop="$PREFIX/share/applications/pycharm.desktop"
thunderbird_desktop="$PREFIX/share/applications/thunderbird.desktop"
shatteredpd_desktop="$PREFIX/share/applications/shatteredpd.desktop"
el_desktop="$PREFIX/share/applications/el.desktop"
librewolf_desktop="$PREFIX/share/applications/librewolf.desktop"
unciv_desktop="$PREFIX/share/applications/unciv.desktop"
element_desktop="$PREFIX/share/applications/element.desktop"
prism_desktop="$PREFIX/share/applications/prism.desktop"
wine_desktop="$PREFIX/share/applications/wine32.desktop"
runelite_desktop="$PREFIX/share/applications/runelite.desktop"
simplenote_desktop="$PREFIX/share/applications/SimpleNote.desktop"
onepassword_desktop="$PREFIX/share/applications/1password.desktop"
lagrange_desktop="$PREFIX/share/applications/lagrange.desktop"
nicotine_desktop="$PREFIX/share/applications/nicotine.desktop"
vieb_desktop="$PREFIX/share/applications/vieb.desktop"
zettlr_desktop="$PREFIX/share/applications/Zettlr.desktop"
armcord_desktop="$PREFIX/share/applications/armcord.desktop"
dbeaver_desktop="$PREFIX/share/applications/dbeaver.desktop"
gdlauncher_desktop="$PREFIX/share/applications/gdlauncher.desktop"
cockatrice_desktop="$PREFIX/share/applications/cockatrice.desktop"
rustdesk_desktop="$PREFIX/share/applications/rustdesk.desktop"
thorium_desktop="$PREFIX/share/applications/thorium-browser.desktop"
kali_burpsuite_desktop="$PREFIX/share/applications/kali-burpsuite.desktop"
miniforge_desktop="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/$varname/miniforge3"

check_kali_burpsuite_installed() {
    if [ -e "$burpsuite_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_miniforge_installed() {
    if [ -d "$miniforge_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_owncloud_installed() {
    if [ -e "$owncloud_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_tor_browser_installed() {
    if [ -e "$tor_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_webcord_installed() {
    if [ -e "$webcord_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_vivaldi_installed() {
    if [ -e "$vivaldi_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_brave_installed() {
    if [ -e "$brave_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_obsidian_installed() {
    if [ -e "$obsidian_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_libreoffice_installed() {
    if [ -e "$libreoffice_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_code_installed() {
    if [ -e "$code_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_vlc_installed() {
    if [ -e "$vlc_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_notion_installed() {
    if [ -e "$notion_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_pycharm_installed() {
    if [ -e "$pycharm_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_thunderbird_installed() {
    if [ -e "$thunderbird_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_shatteredpd_installed() {
    if [ -e "$shatteredpd_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}


check_el_installed() {
    if [ -e "$el_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_librewolf_installed() {
    if [ -e "$librewolf_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_unciv_installed() {
    if [ -e "$unciv_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_element_installed() {
    if [ -e "$element_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_prism_installed() {
    if [ -e "$prism_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_wine_installed() {
    if [ -e "$wine_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_runelite_installed() {
    if [ -e "$runelite_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_simplenote_installed() {
    if [ -e "$simplenote_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_onepassword_installed() {
    if [ -e "$onepassword_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_lagrange_installed() {
    if [ -e "$lagrange_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_nicotine_installed() {
    if [ -e "$nicotine_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_vieb_installed() {
    if [ -e "$vieb_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_zettlr_installed() {
    if [ -e "$zettlr_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_armcord_installed() {
    if [ -e "$armcord_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}


check_dbeaver_installed() {
    if [ -e "$dbeaver_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_gdlauncher_installed() {
    if [ -e "$gdlauncher_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_cockatrice_installed() {
    if [ -e "$cockatrice_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_rustdesk_installed() {
    if [ -e "$rustdesk_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

check_thorium_installed() {
    if [ -e "$thorium_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

install_kali_burpsuite(){
    "$script_dir/install_kali_burpsuite"
    zenity --info --title="Installation Complete" --text="kali_burpsuite has been installed successfully."
}

install_owncloud() {
    "$script_dir/install_owncloud.sh"
    zenity --info --title="Installation Complete" --text="owncloud has been installed successfully."
}

install_tor_browser() {
    "$script_dir/install_tor_browser.sh"
    zenity --info --title="Installation Complete" --text="Tor Browser has been installed successfully."
}

install_webcord() {
    "$script_dir/install_webcord.sh"
    zenity --info --title="Installation Complete" --text="Webcord has been installed successfully."
}

install_vivaldi() {
    "$script_dir/install_vivaldi.sh"
    zenity --info --title="Installation Complete" --text="Vivaldi has been installed successfully."
}

install_brave() {
    "$script_dir/install_brave.sh"
    zenity --info --title="Installation Complete" --text="Brave has been installed successfully."
}

install_obsidian() {
    "$script_dir/install_obsidian.sh"
    zenity --info --title="Installation Complete" --text="Obsidian has been installed successfully."
}

install_libreoffice() {
    "$script_dir/install_libreoffice.sh"
    zenity --info --title="Installation Complete" --text="Libreoffice has been installed successfully."
}

install_code() {
    "$script_dir/install_vscode.sh"
    zenity --info --title="Installation Complete" --text="Visual Studio has been installed successfully."
}

install_miniforge() {
    "$script_dir/install_miniforge.sh"
    zenity --info --title="Installation Complete" --text="miniforge3 has been installed successfully."
}

install_vlc() {
    "$script_dir/install_vlc.sh"
    zenity --info --title="Installation Complete" --text="VLC has been installed successfully."
}

install_notion() {
    "$script_dir/install_notion.sh"
    zenity --info --title="Installation Complete" --text="Notion has been installed successfully."
}

install_pycharm() {
    "$script_dir/install_pycharm.sh"
    zenity --info --title="Installation Complete" --text="PyCharm has been installed successfully."
}

install_thunderbird() {
    "$script_dir/install_thunderbird.sh"
    zenity --info --title="Installation Complete" --text="thunderbird has been installed successfully."
}

install_shatteredpd() {
    "$script_dir/install_shatteredpd.sh"
    zenity --info --title="Installation Complete" --text="Shattered Pixel Dungeon has been installed successfully."
}

install_el() {
    "$script_dir/install_el.sh"
    zenity --info --title="Installation Complete" --text="Eternal Lands has been installed successfully."
}

install_librewolf() {
    "$script_dir/install_librewolf.sh"
    zenity --info --title="Installation Complete" --text="Librewolf has been installed successfully."
}

install_unciv() {
    "$script_dir/install_unciv.sh"
    zenity --info --title="Installation Complete" --text="Unciv has been installed successfully."
}

install_element() {
    "$script_dir/install_element.sh"
    zenity --info --title="Installation Complete" --text="Element has been installed successfully."
}

install_prism() {
    "$script_dir/install_prismlauncher.sh"
    zenity --info --title="Installation Complete" --text="Prism Launcher has been installed successfully."
}

install_wine() {
    "$script_dir/install_wine.sh"
    zenity --info --title="Installation Complete" --text="Box86, Box64 and Wine has been installed successfully."
}


install_runelite() {
    "$script_dir/install_runelite.sh"
    zenity --info --title="Installation Complete" --text="RuneLite has been installed successfully."
}

install_simplenote() {
    "$script_dir/install_simplenote.sh" --install
    zenity --info --title="Installation Complete" --text="SimpleNote has been installed successfully."
}

install_onepassword() {
    "$script_dir/install_1password.sh" --install
    zenity --info --title="Installation Complete" --text="1password has been installed successfully."
}

install_lagrange() {
    "$script_dir/install_lagrange.sh" --install
    zenity --info --title="Installation Complete" --text="lagrange has been installed successfully."
}

install_nicotine() {
    "$script_dir/install_nicotine.sh" --install
    zenity --info --title="Installation Complete" --text="Nicotine+ has been installed successfully."
}

install_vieb() {
    "$script_dir/install_vieb.sh" --install
    zenity --info --title="Installation Complete" --text="Vieb has been installed successfully."
}

install_zettlr() {
    "$script_dir/install_zettlr.sh" --install
    zenity --info --title="Installation Complete" --text="Zettlr has been installed successfully."
}

install_armcord() {
    "$script_dir/install_armcord.sh" --install
    zenity --info --title="Installation Complete" --text="armcord has been installed successfully."
}


install_dbeaver() {
    "$script_dir/install_dbeaver.sh" --install
    zenity --info --title="Installation Complete" --text="dbeaver been installed successfully."
}

install_gdlauncher() {
    "$script_dir/install_gdlauncher.sh" --install
    zenity --info --title="Installation Complete" --text="GDLauncher has been installed successfully."
}

install_cockatrice() {
    "$script_dir/install_cockatrice.sh" --install
    zenity --info --title="Installation Complete" --text="Cockatrice has been installed successfully."
}

install_rustdesk() {
    "$script_dir/install_rustdesk.sh" --install
    zenity --info --title="Installation Complete" --text="Rustdesk has been installed successfully."
}

install_thorium() {
    "$script_dir/install_thorium.sh" --install
    zenity --info --title="Installation Complete" --text="Thorium has been installed successfully."
}


remove_kali_burpsuite() {
    if [ -e "$kali_burpsuite_desktop" ]; then
        proot-distro login BackTrack --user $kaliusername --shared-tmp -- env DISPLAY=:1.0 sudo -S apt purge burpsuite
        rm "$HOME/Desktop/kali-burpsuite.desktop"
        rm "$kali_burpsuite_desktop"
        zenity --info --title="Removal Complete" --text="burpsuite has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="burpsuite is not installed."
    fi
}

remove_owncloud() {
    if [ -e "$owncloud_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt remove owncloud
        rm "$HOME/Desktop/owncloud.desktop"
        rm "$PREFIX/share/applications/owncloud.desktop"
        rm "$owncloud_desktop"
        zenity --info --title="Removal Complete" --text="owncloud has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="owncloud is not installed."
    fi
}

remove_tor_browser() {
    if [ -e "$tor_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf tor-browser
        rm "$HOME/Desktop/tor.desktop"
        rm "$tor_desktop"
        zenity --info --title="Removal Complete" --text="Tor Browser has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Tor Browser is not installed."
    fi
}

remove_webcord() {
    if [ -e "$webcord_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt remove webcord
        rm "$HOME/Desktop/webcord.desktop"
        rm "$webcord_desktop"
        zenity --info --title="Removal Complete" --text="Webcord has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Webcord is not installed."
    fi
}

remove_vivaldi() {
    if [ -e "$vivaldi_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt-mark unhold vivaldi-stable
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove vivaldi-stable -y
        rm "$HOME/Desktop/vivaldi.desktop"
        rm "$vivaldi_desktop"
        zenity --info --title="Removal Complete" --text="Vivaldi has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Vivaldi is not installed."
    fi
}

remove_brave() {
    if [ -e "$brave_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo -S apt remove brave-browser -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /etc/apt/sources.list.d/brave-browser-release.list
        rm "$HOME/Desktop/brave.desktop"
        rm "$brave_desktop"
        zenity --info --title="Removal Complete" --text="Brave has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Brave is not installed."
    fi
}

remove_obsidian() {
    if [ -e "$obsidian_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf /opt/Obsidian
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf .config/obsidian
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf Obsidian\ Vault
        rm "$HOME/Desktop/obsidian.desktop"
        rm "$obsidian_desktop"
        zenity --info --title="Removal Complete" --text="Obsidian has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Obsidian is not installed."
    fi
}

remove_libreoffice() {
    if [ -e "$libreoffice_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove libreoffice -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$PREFIX/share/applications/libreoffice*"
        rm "$libreoffice_desktop"
        zenity --info --title="Removal Complete" --text="Libreoffice has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Libreoffice is not installed."
    fi
}

remove_code() {
    if [ -e "$code_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove code -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$PREFIX/share/applications/code.desktop"
        rm "$HOME/Desktop/code.desktop"
        rm "$code_desktop"
        zenity --info --title="Removal Complete" --text="VS Code has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="VS Code is not installed."
    fi
}

remove_miniforge() {

    if [ -e "$code_desktop" ]; then
        
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo rm -rf ~/miniforge3
        # .bashrc miniforge 삭제 스크립트 작성해야함
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        zenity --info --title="Removal Complete" --text="miniforge3 has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="miniforge3 is not installed."
    fi
}


remove_vlc() {
    if [ -e "$vlc_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove vlc -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$vlc_desktop"
        zenity --info --title="Removal Complete" --text="VLC has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="VLC is not installed."
    fi
}

remove_notion() {
    if [ -e "$notion_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf notion
        rm "$HOME/Desktop/notion.desktop"
        rm "$notion_desktop"
        zenity --info --title="Removal Complete" --text="Notion has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Notion is not installed."
    fi
}

remove_pycharm() {
    if [ -e "$pycharm_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf /opt/pycharm-community
        rm "$HOME/Desktop/pycharm.desktop"
        rm "$pycharm_desktop"
        zenity --info --title="Removal Complete" --text="PyCharm has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="PyCharm is not installed."
    fi
}

remove_thunderbird() {
    if [ -e "$thunderbird_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt purge thunderbird -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$HOME/Desktop/thunderbird.desktop"
        rm "$thunderbird_desktop"
        SOURCE_LINE='deb [signed-by="/usr/share/keyrings/ubuntu-archive-keyring.gpg"] http://ports.ubuntu.com/ubuntu-ports mantic main universe multiverse'
        SOURCE_FILE="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/etc/apt/sources.list"

        sed -i "\|$SOURCE_LINE|d" "$SOURCE_FILE"
        zenity --info --title="Removal Complete" --text="thunderbird has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="thunderbird is not installed."
    fi
    
}

remove_shatteredpd() {
    if [ -e "$shatteredpd_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf /opt/ShatteredPD
        rm "$HOME/Desktop/shatteredpd.desktop"
        rm "$shatteredpd_desktop"
        zenity --info --title="Removal Complete" --text="Shattered Pixel Dungeon has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Shattered Pixel Dungeon is not installed."
    fi
}

remove_el() {
    if [ -e "$el_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf eternallands
        rm "$HOME/Desktop/el.desktop"
        rm "$el_desktop"
        zenity --info --title="Removal Complete" --text="Eternal Lands has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Eternal Lands is not installed."
    fi
}

remove_librewolf() {
    if [ -e "$librewolf_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf /opt/librewolf
        rm "$HOME/Desktop/librewolf.desktop"
        rm "$librewolf_desktop"
        zenity --info --title="Removal Complete" --text="ibrewolf has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Librewolf is not installed."
    fi
}

remove_unciv() {
    if [ -e "$unciv_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/games/Unciv.jar
        rm "$HOME/Desktop/unciv.desktop"
        rm "$unciv_desktop"
        zenity --info --title="Removal Complete" --text="Unciv has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Unciv is not installed."
    fi
}

remove_element() {
    if [ -e "$element_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove element-desktop -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$HOME/Desktop/element.desktop"
        rm "$element_desktop"
        zenity --info --title="Removal Complete" --text="Element has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Element is not installed."
    fi
}

remove_prism() {
    if [ -e "$prism_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt remove prismlauncher -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$HOME/Desktop/prism.desktop"
        rm "$prism_desktop"
        zenity --info --title="Removal Complete" --text="Prism Launcher has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Prism Launcher is not installed."
    fi
}

remove_wine() {
    if [ -e "$wine_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf wine wine64 .wine32 .wine64
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/wine
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/wine64
        rm "$HOME/Desktop/wine32.desktop"
        rm "$HOME/Desktop/wine64.desktop"
        rm "$PREFIX/share/applications/wine32.desktop"
        rm "$wine_desktop"
        zenity --info --title="Removal Complete" --text="Box86, Box64 and Wine have been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Box86, Box64 and Wine are not installed."
    fi
}

remove_runelite() {
    if [ -e "$runelite_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf /opt/RuneLite
        rm "$HOME/Desktop/runelite.desktop"
        rm "$runelite_desktop"
        zenity --info --title="Removal Complete" --text="RuneLite has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="RuneLite is not installed."
    fi
}

remove_simplenote() {
    if [ -e "$simplenote_desktop" ]; then
        "$script_dir/install_simplenote.sh" --uninstall
        zenity --info --title="Removal Complete" --text="SimpleNote has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="SimpleNote is not installed."
    fi
}

remove_onepassword() {
    if [ -e "$onepassword_desktop" ]; then
        "$script_dir/install_1password.sh" --uninstall
        zenity --info --title="Removal Complete" --text="1password has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="1password is not installed."
    fi
}

remove_lagrange() {
    if [ -e "$lagrange_desktop" ]; then
        "$script_dir/install_lagrange.sh" --uninstall
        zenity --info --title="Removal Complete" --text="lagrange has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="lagrange is not installed."
    fi
}

remove_nicotine() {
    if [ -e "$nicotine_desktop" ]; then
        "$script_dir/install_nicotine.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Nicotine+ has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Nicotine+ is not installed."
    fi
}

remove_vieb() {
    if [ -e "$vieb_desktop" ]; then
        "$script_dir/install_vieb.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Vieb has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Vieb is not installed."
    fi
}

remove_zettlr() {
    if [ -e "$zettlr_desktop" ]; then
        "$script_dir/install_zettlr.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Zettlr has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Zettlr is not installed."
    fi
}

remove_armcord() {
    if [ -e "$armcord_desktop" ]; then
        "$script_dir/install_armcord.sh" --uninstall
        zenity --info --title="Removal Complete" --text="armcord has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="armcord is not installed."
    fi
}


remove_dbeaver() {
    if [ -e "$dbeaver_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo rm -f /usr/bin/dbeaver
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo rm -rf /opt/dbeaver
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt autoremove -y
        rm "$HOME/Desktop/dbeaver.desktop"
        rm "$dbeaver_desktop"
        zenity --info --title="Removal Complete" --text="dbeaver has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="dbeaver is not installed."
    fi
}

remove_gdlauncher() {
    if [ -e "$gdlauncher_desktop" ]; then
        "$script_dir/install_gdlauncher.sh" --uninstall
        zenity --info --title="Removal Complete" --text="GDLauncher has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="GDLauncher is not installed."
    fi
}

remove_cockatrice() {
    if [ -e "$cockatrice_desktop" ]; then
        "$script_dir/install_cockatrice.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Cockatrice has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Cockatrice is not installed."
    fi
}

remove_rustdesk() {
    if [ -e "$rustdesk_desktop" ]; then
        "$script_dir/install_rustdesk.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Rustdesk has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Rustdesk is not installed."
    fi
}

remove_thorium() {
    if [ -e "$thorium_desktop" ]; then
        "$script_dir/install_thorium.sh" --uninstall
        zenity --info --title="Removal Complete" --text="Throium has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Thorium is not installed."
    fi
}

while true; do
    # Determine the installation status of each app
    kali_burpsuite_status=$(check_kali_burpsuite_installed)
    miniforge_status=$(check_miniforge_installed)
    owncloud_status=$(check_owncloud_installed)
    tor_browser_status=$(check_tor_browser_installed)
    webcord_status=$(check_webcord_installed)
    vivaldi_status=$(check_vivaldi_installed)
    brave_status=$(check_brave_installed)
    obsidian_status=$(check_obsidian_installed)
    libreoffice_status=$(check_libreoffice_installed)
    code_status=$(check_code_installed)
    vlc_status=$(check_vlc_installed)
    notion_status=$(check_notion_installed)
    pycharm_status=$(check_pycharm_installed)
    thunderbird_status=$(check_thunderbird_installed)
    shatteredpd_status=$(check_shatteredpd_installed)
    el_status=$(check_el_installed)
    librewolf_status=$(check_librewolf_installed)
    unciv_status=$(check_unciv_installed)
    element_status=$(check_element_installed)
    prism_status=$(check_prism_installed)
    wine_status=$(check_wine_installed)
    runelite_status=$(check_runelite_installed)
    simplenote_status=$(check_simplenote_installed)
    onepassword_status=$(check_onepassword_installed)
    lagrange_status=$(check_lagrange_installed)
    nicotine_status=$(check_nicotine_installed)
    vieb_status=$(check_vieb_installed)
    zettlr_status=$(check_zettlr_installed)
    armcord_status=$(check_armcord_installed)
    dbeaver_status=$(check_dbeaver_installed)
    gdlauncher_status=$(check_gdlauncher_installed)
    cockatrice_status=$(check_cockatrice_installed)
    rustdesk_status=$(check_rustdesk_installed)
    thorium_status=$(check_thorium_installed)

    # Define the actions based on the installation status
    if [ "$kali_burpsuite_status" == "Installed" ]; then
        kali_burpsuite_action="Remove kali_burpsuite (Status: Installed)"
        kali_burpsuite_description="A web hack application"
    else
        kali_burpsuite_action="Install kali_burpsuite (Status: Not Installed)"
        kali_burpsuite_description="A web hack application"
    fi

    if [ "$miniforge_status" == "Installed" ]; then
        miniforge_action="Remove miniforge (Status: Installed)"
        miniforge_description="miniforge3"
    else
        miniforge_action="Install miniforge (Status: Installed)"
        miniforge_description="miniforge3"
    fi


    if [ "$owncloud_status" == "Installed" ]; then
        owncloud_action="Remove owncloud (Status: Installed)"
        owncloud_description="A privacy-focused YouTube client"
    else
        owncloud_action="Install owncloud (Status: Not Installed)"
        owncloud_description="A privacy-focused YouTube client"
    fi

    if [ "$tor_browser_status" == "Installed" ]; then
        tor_browser_action="Remove Tor Browser (Status: Installed)"
        tor_browser_description="A web browser for anonymous browsing"
    else
        tor_browser_action="Install Tor Browser (Status: Not Installed)"
        tor_browser_description="A web browser for anonymous browsing"
    fi

    if [ "$webcord_status" == "Installed" ]; then
        webcord_action="Remove Webcord (Status: Installed)"
        webcord_description="A Discord web client"
    else
        webcord_action="Install Webcord (Status: Not Installed)"
        webcord_description="A Discord web client"
    fi

    if [ "$vivaldi_status" == "Installed" ]; then
        vivaldi_action="Remove Vivaldi (Status: Installed)"
        vivaldi_description="A freeware, cross-platform web browser"
    else
        vivaldi_action="Install Vivaldi (Status: Not Installed)"
        vivaldi_description="A freeware, cross-platform web browser"
    fi

    if [ "$brave_status" == "Installed" ]; then
        brave_action="Remove Brave (Status: Installed)"
        brave_description="A privacy-focused web browser"
    else
        brave_action="Install Brave (Status: Not Installed)"
        brave_description="A privacy-focused web browser"
    fi

    if [ "$obsidian_status" == "Installed" ]; then
        obsidian_action="Remove Obsidian (Status: Installed)"
        obsidian_description="A private and flexible note‑taking app"
    else
        obsidian_action="Install Obsidian (Status: Not Installed)"
        obsidian_description="A private and flexible note‑taking app"
    fi

    if [ "$libreoffice_status" == "Installed" ]; then
        libreoffice_action="Remove Libreoffice (Status: Installed)"
        libreoffice_description="A free and open-source office productivity software suite"
    else
        libreoffice_action="Install Libreoffice (Status: Not Installed)"
        libreoffice_description="A free and open-source office productivity software suite"
    fi

    if [ "$code_status" == "Installed" ]; then
        code_action="Remove Visual Studio Code (Status: Installed)"
        code_description="Code Editing. Redefined."
    else
        code_action="Install Visual Studio Code (Status: Not Installed)"
        code_description="Code Editing. Redefined."
    fi

    if [ "$vlc_status" == "Installed" ]; then
        vlc_action="Remove VLC (Status: Installed)"
        vlc_description="A free and open source cross-platform multimedia player "
    else
        vlc_action="Install VLC (Status: Not Installed)"
        vlc_description="A free and open source cross-platform multimedia player "
    fi

    if [ "$notion_status" == "Installed" ]; then
        notion_action="Remove Notion (Status: Installed)"
        notion_description="A freemium productivity and note-taking web application"
    else
        notion_action="Install Notion (Status: Not Installed)"
        notion_description="A freemium productivity and note-taking web application"
    fi

    if [ "$pycharm_status" == "Installed" ]; then
        pycharm_action="Remove PyCharm (Status: Installed)"
        pycharm_description="A Python IDE"
    else
        pycharm_action="Install PyCharm (Status: Not Installed)"
        pycharm_description="A Python IDE"
    fi
    
    if [ "$thunderbird_status" == "Installed" ]; then
        thunderbird_action="Remove thunderbird (Status: Installed)"
        thunderbird_description="A mail client"
    else
        thunderbird_action="Install thunderbird (Status: Not Installed)"
        thunderbird_description="A mail client"
    fi

    if [ "$shatteredpd_status" == "Installed" ]; then
        shatteredpd_action="Remove Shattered Pixel Dungeon (Status: Installed)"
        shatteredpd_description="A traditional roguelike dungeon crawler RPG"
    else
        shatteredpd_action="Install Shattered Pixel Dungeon (Status: Not Installed)"
        shatteredpd_description="A traditional roguelike dungeon crawler RPG"
    fi

    if [ "$el_status" == "Installed" ]; then
        el_action="Remove Eternal Lands (Status: Installed)"
        el_description="A FREE 3D fantasy MMORPG "
    else
        el_action="Install Eternal Lands (Status: Not Installed)"
        el_description="A FREE 3D fantasy MMORPG "
    fi

    if [ "$librewolf_status" == "Installed" ]; then
        librewolf_action="Remove Librewolf (Status: Installed)"
        librewolf_description="A free and open-source web browser"
    else
        librewolf_action="Install Librewolf (Status: Not Installed)"
        librewolf_description="A free and open-source web browser"
    fi

    if [ "$unciv_status" == "Installed" ]; then
        unciv_action="Remove Unciv (Status: Installed)"
        unciv_description="Open-source remake of Civ V "
    else
        unciv_action="Install Unciv (Status: Not Installed)"
        unciv_description="Open-source remake of Civ V"
    fi

    if [ "$element_status" == "Installed" ]; then
        element_action="Remove Element (Status: Installed)"
        element_description="A secure communications platform "
    else
        element_action="Install Element (Status: Not Installed)"
        element_description="A secure communications platform "
    fi

    if [ "$prism_status" == "Installed" ]; then
        prism_action="Remove Prism Launcher (Status: Installed)"
        prism_description="An Open Source Minecraft launcher"
    else
        prism_action="Install Prism Launcher (Status: Not Installed)"
        prism_description="An Open Source Minecraft launcher"
    fi

    if [ "$wine_status" == "Installed" ]; then
        wine_action="Remove Box86, Box64 and Wine (Status: Installed)"
        wine_description="lets you run x86_64 Linux and Windows programs"
    else
        wine_action="Install Box86, Box64 and Wine (Status: Not Installed)"
        wine_description="lets you run x86_64 Linux and Windows programs"
    fi

    if [ "$runelite_status" == "Installed" ]; then
        runelite_action="Remove RuneLite (Status: Installed)"
        runelite_description="Old School RuneScape Client"
    else
        runelite_action="Install RuneLite (Status: Not Installed)"
        runelite_description="Old School RuneScape Client"
    fi

    if [ "$simplenote_status" == "Installed" ]; then
        simplenote_action="Remove SimpleNote (Status: Installed)"
        simplenote_description="All your notes, synced on all your devices."
    else
        simplenote_action="Install SimpleNote (Status: Not Installed)"
        simplenote_description="All your notes, synced on all your devices."
    fi

    if [ "$onepassword_status" == "Installed" ]; then
        onepassword_action="Remove 1password (Status: Installed)"
        onepassword_description="Go ahead. Forget your passwords."
    else
        onepassword_action="Install 1password (Status: Not Installed)"
        onepassword_description="Go ahead. Forget your passwords."
    fi

    if [ "$lagrange_status" == "Installed" ]; then
        lagrange_action="Remove lagrange (Status: Installed)"
        lagrange_description="A Beautiful Gemini Client"
    else
        lagrange_action="Install lagrange (Status: Not Installed)"
        lagrange_description="A Beautiful Gemini Client"
    fi

    if [ "$nicotine_status" == "Installed" ]; then
        nicotine_action="Remove Nicotine+ (Status: Installed)"
        nicotine_description="A client for the Soulseek peer-to-peer network"
    else
        nicotine_action="Install Nicotine+ (Status: Not Installed)"
        nicotine_description="A client for the Soulseek peer-to-peer network"
    fi

    if [ "$vieb_status" == "Installed" ]; then
        vieb_action="Remove Vieb (Status: Installed)"
        vieb_description="Vim bindings for the web by design"
    else
        vieb_action="Install Vieb (Status: Not Installed)"
        vieb_description="Vim bindings for the web by design"
    fi

    if [ "$zettlr_status" == "Installed" ]; then
        zettlr_action="Remove Zettlr (Status: Installed)"
        zettlr_description="A Markdown editor for the 21st century"
    else
        zettlr_action="Install Zettlr (Status: Not Installed)"
        zettlr_description="A Markdown editor for the 21st century"
    fi

    if [ "$armcord_status" == "Installed" ]; then
        armcord_action="Remove armcord (Status: Installed)"
        armcord_description="A custom themable Discord client"
    else
        armcord_action="Install armcord (Status: Not Installed)"
        armcord_description="A custom themable Discord client"
    fi

    if [ "$dbeaver_status" == "Installed" ]; then
        dbeaver_action="Remove Dbeaver (Status: Installed)"
        dbeaver_description="Dbeaver-SQL App"
    else
        dbeaver_action="Install Dbeaver (Status: Not Installed)"
        dbeaver_description="Dbeaver-SQL App"
    fi

    if [ "$gdlauncher_status" == "Installed" ]; then
        gdlauncher_action="Remove GDLauncher (Status: Installed)"
        gdlauncher_description="A Minecraft launcher"
    else
        gdlauncher_action="Install GDlauncher (Status: Not Installed)"
        gdlauncher_description="A Minecraft launcher"
    fi    

    if [ "$cockatrice_status" == "Installed" ]; then
        cockatrice_action="Remove Cockatrice (Status: Installed)"
        cockatrice_description="A cross-platform virtual tabletop for multiplayer card games"
    else
        cockatrice_action="Install Cockatrice (Status: Not Installed)"
        cockatrice_description="A cross-platform virtual tabletop for multiplayer card games"
    fi   

    if [ "$rustdesk_status" == "Installed" ]; then
        rustdesk_action="Remove Rustdesk (Status: Installed)"
        rustdesk_description="An alternative to TeamViewer"
    else
        rustdesk_action="Install Rustdesk (Status: Not Installed)"
        rustdesk_description="An alternative to TeamViewer"
    fi      
    
    if [ "$thorium_status" == "Installed" ]; then
        thorium_action="Remove Thorium (Status: Installed)"
        thorium_description="The fastest browser on Earth"
    else
        thorium_action="Install Thorium (Status: Not Installed)"
        thorium_description="The fastest browser on Earth"
    fi         
    
    # Set the dark GTK theme
    export GTK_THEME=Adwaita:dark

# Display the selection dialog
choice=$(zenity --list --radiolist \
    --title="App Installer" \
    --text="Select an action:" \
    --column="Select" --column="Action" --column="Description" \
    FALSE "$kali_burpsuite_action" "$kali_burpsuite_description" \
    FALSE "$miniforge_action" "$miniforge_description" \
    FALSE "$owncloud_action" "$owncloud_description" \
    FALSE "$tor_browser_action" "$tor_browser_description" \
    FALSE "$webcord_action" "$webcord_description" \
    FALSE "$vivaldi_action" "$vivaldi_description" \
    FALSE "$brave_action" "$brave_description" \
    FALSE "$obsidian_action" "$obsidian_description" \
    FALSE "$libreoffice_action" "$libreoffice_description" \
    FALSE "$code_action" "$code_description" \
    FALSE "$vlc_action" "$vlc_description" \
    FALSE "$notion_action" "$notion_description" \
    FALSE "$pycharm_action" "$pycharm_description" \
    FALSE "$thunderbird_action" "$thunderbird_description" \
    FALSE "$shatteredpd_action" "$shatteredpd_description" \
    FALSE "$el_action" "$el_description" \
    FALSE "$librewolf_action" "$librewolf_description" \
    FALSE "$unciv_action" "$unciv_description" \
    FALSE "$element_action" "$element_description" \
    FALSE "$prism_action" "$prism_description" \
    FALSE "$runelite_action" "$runelite_description" \
    FALSE "$simplenote_action" "$simplenote_description" \
    FALSE "$onepassword_action" "$onepassword_description" \
    FALSE "$lagrange_action" "$lagrange_description" \
    FALSE "$nicotine_action" "$nicotine_description" \
    FALSE "$vieb_action" "$vieb_description" \
    FALSE "$zettlr_action" "$zettlr_description" \
    FALSE "$armcord_action" "$armcord_description" \
    FALSE "$wine_action" "$wine_description" \
    FALSE "$dbeaver_action" "$dbeaver_description" \
    FALSE "$gdlauncher_action" "$gdlauncher_description" \
    FALSE "$cockatrice_action" "$cockatrice_description" \
    FALSE "$rustdesk_action" "$rustdesk_description" \
    FALSE "$thorium_action" "$thorium_description" \
    SEPARATOR \
    --width=900 --height=500)

    # Check if the user canceled the selection
    if [ -z "$choice" ]; then
        exit 0
    fi

    # Execute the selected action
    case $choice in
        "$kali_burpsuite_action")
            if [ "$kali_burpsuite_status" == "Installed" ]; then
                remove_kali_burpsuite
            else
                install_kali_burpsuite
            fi
            ;;
        "$miniforge_action")
        if [ "$miniforge_status" == "Installed" ]; then
            remove_miniforge
        else
            install_miniforge
        fi
        ;;
        "$owncloud_action")
            if [ "$owncloud_status" == "Installed" ]; then
                remove_owncloud
            else
                install_owncloud
            fi
            ;;
        "$tor_browser_action")
            if [ "$tor_browser_status" == "Installed" ]; then
                remove_tor_browser
            else
                install_tor_browser
            fi
            ;;
        "$webcord_action")
            if [ "$webcord_status" == "Installed" ]; then
                remove_webcord
            else
                install_webcord
            fi
            ;;
        "$vivaldi_action")
            if [ "$vivaldi_status" == "Installed" ]; then
                remove_vivaldi
            else
                install_vivaldi
            fi
            ;;
        "$brave_action")
            if [ "$brave_status" == "Installed" ]; then
                remove_brave
            else
                install_brave
            fi
            ;;
        "$obsidian_action")
            if [ "$obsidian_status" == "Installed" ]; then
                remove_obsidian
            else
                install_obsidian
            fi
            ;;    
        "$libreoffice_action")
            if [ "$libreoffice_status" == "Installed" ]; then
                remove_libreoffice
            else
                install_libreoffice
            fi
            ;;     
        "$code_action")
            if [ "$code_status" == "Installed" ]; then
                remove_code
            else
                install_code
            fi
            ;;     
        "$vlc_action")
            if [ "$vlc_status" == "Installed" ]; then
                remove_vlc
            else
                install_vlc
            fi
            ;;        
        "$notion_action")
            if [ "$notion_status" == "Installed" ]; then
                remove_notion
            else
                install_notion
            fi
            ;;   
        "$pycharm_action")
            if [ "$pycharm_status" == "Installed" ]; then
                remove_pycharm
            else
                install_pycharm
            fi
            ;;   
        "$thunderbird_action")
            if [ "$thunderbird_status" == "Installed" ]; then
                remove_thunderbird
            else
                install_thunderbird
            fi
            ;;   
        "$shatteredpd_action")
            if [ "$shatteredpd_status" == "Installed" ]; then
                remove_shatteredpd
            else
                install_shatteredpd
            fi
            ;;   
        "$el_action")
            if [ "$el_status" == "Installed" ]; then
                remove_el
            else
                install_el
            fi
            ;;   
            "$librewolf_action")
            if [ "$librewolf_status" == "Installed" ]; then
                remove_librewolf
            else
                install_librewolf
            fi
            ;;   
        "$unciv_action")
            if [ "$unciv_status" == "Installed" ]; then
                remove_unciv
            else
                install_unciv
            fi
            ;; 
        "$element_action")
            if [ "$element_status" == "Installed" ]; then
                remove_element
            else
                install_element
            fi
            ;;   
        "$prism_action")
            if [ "$prism_status" == "Installed" ]; then
                remove_prism
            else
                install_prism
            fi
            ;;   
        "$wine_action")
            if [ "$wine_status" == "Installed" ]; then
                remove_wine
            else
                install_wine
            fi
            ;;   
        "$runelite_action")
            if [ "$runelite_status" == "Installed" ]; then
                remove_runelite
            else
                install_runelite
            fi
            ;;   
        "$simplenote_action")
            if [ "$simplenote_status" == "Installed" ]; then
                remove_simplenote
            else
                install_simplenote
            fi
            ;;   
        "$onepassword_action")
            if [ "$onepassword_status" == "Installed" ]; then
                remove_onepassword
            else
                install_onepassword
            fi
            ;;   
        "$lagrange_action")
            if [ "$lagrange_status" == "Installed" ]; then
                remove_lagrange
            else
                install_lagrange
            fi
            ;;
        "$nicotine_action")
            if [ "$nicotine_status" == "Installed" ]; then
                remove_nicotine
            else
                install_nicotine
            fi
            ;;
        "$vieb_action")
            if [ "$vieb_status" == "Installed" ]; then
                remove_vieb
            else
                install_vieb
            fi
            ;;
        "$zettlr_action")
            if [ "$zettlr_status" == "Installed" ]; then
                remove_zettlr
            else
                install_zettlr
            fi
            ;;
        "$armcord_action")
            if [ "$armcord_status" == "Installed" ]; then
                remove_armcord
            else
                install_armcord
            fi
            ;;
        "$dbeaver_action")
            if [ "$dbeaver_status" == "Installed" ]; then
                remove_dbeaver
            else
                install_dbeaver
            fi
            ;;
        "$gdlauncher_action")
            if [ "$gdlauncher_status" == "Installed" ]; then
                remove_gdlauncher
            else
                install_gdlauncher
            fi
            ;;       
        "$cockatrice_action")
            if [ "$cockatrice_status" == "Installed" ]; then
                remove_cockatrice
            else
                install_cockatrice
            fi
            ;; 
        "$rustdesk_action")
            if [ "$rustdesk_status" == "Installed" ]; then
                remove_rustdesk
            else
                install_rustdesk
            fi
            ;;  
        "$thorium_action")
            if [ "$thorium_status" == "Installed" ]; then
                remove_thorium
            else
                install_thorium
            fi
            ;;              
        *)
            zenity --error --title="Error" --text="Invalid choice."
            ;;
    esac
done
