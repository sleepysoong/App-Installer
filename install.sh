#!/data/data/com.termux/files/usr/bin/bash

varname=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/*)
kaliusername=$(basename $PREFIX/var/lib/proot-distro/installed-rootfs/BackTrack/home/*)

# Get the absolute path for the script's directory
script_dir=$(realpath "$(dirname "$0")")

# Absolute paths for required files and directories
installed_rootfs_dir="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home"
owncloud_desktop="$PREFIX/share/applications/owncloud.desktop"
tor_desktop="$PREFIX/share/applications/tor.desktop"
libreoffice_desktop="$PREFIX/share/applications/libreoffice-base.desktop"
code_desktop="$PREFIX/share/applications/code.desktop"
vlc_desktop="$PREFIX/share/applications/vlc.desktop"
notion_desktop="$PREFIX/share/applications/notion.desktop"
nautilus_desktop="$PREFIX/share/applications/nautilus.desktop"
thunderbird_desktop="$PREFIX/share/applications/thunderbird.desktop"
sasm_desktop="$PREFIX/share/applications/sasm.desktop"
wine_desktop="$PREFIX/share/applications/wine64.desktop"
onepassword_desktop="$PREFIX/share/applications/1password.desktop"
dbeaver_desktop="$PREFIX/share/applications/dbeaver.desktop"
thorium_desktop="$PREFIX/share/applications/thorium-browser.desktop"
burpsuite_desktop="$PREFIX/share/applications/burpsuite.desktop"
miniforge_desktop="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/home/$varname/miniforge3"

check_burpsuite_installed() {
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

check_nautilus_installed() {
    if [ -e "$nautilus_desktop" ]; then
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

check_sasm_installed() {
    if [ -e "$sasm_desktop" ]; then
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


check_onepassword_installed() {
    if [ -e "$onepassword_desktop" ]; then
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


check_thorium_installed() {
    if [ -e "$thorium_desktop" ]; then
        echo "Installed"
    else
        echo "Not Installed"
    fi
}

install_burpsuite(){
    "$script_dir/install_burpsuite.sh"
    zenity --info --title="Installation Complete" --text="burpsuite has been installed successfully."
}

install_owncloud() {
    "$script_dir/install_owncloud.sh"
    zenity --info --title="Installation Complete" --text="owncloud has been installed successfully."
}

install_tor_browser() {
    "$script_dir/install_tor_browser.sh"
    zenity --info --title="Installation Complete" --text="Tor Browser has been installed successfully."
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

install_nautilus() {
    "$script_dir/install_nautilus.sh"
    zenity --info --title="Installation Complete" --text="nautilus has been installed successfully."
}

install_thunderbird() {
    "$script_dir/install_thunderbird.sh"
    zenity --info --title="Installation Complete" --text="thunderbird has been installed successfully."
}


install_sasm() {
    "$script_dir/install_sasm.sh"
    zenity --info --title="Installation Complete" --text="sasm has been installed successfully."
}


install_wine() {
    "$script_dir/install_wine.sh"
    zenity --info --title="Installation Complete" --text="Box86, Box64 and Wine has been installed successfully."
}

install_onepassword() {
    "$script_dir/install_1password.sh" --install
    zenity --info --title="Installation Complete" --text="1password has been installed successfully."
}

install_dbeaver() {
    "$script_dir/install_dbeaver.sh" --install
    zenity --info --title="Installation Complete" --text="dbeaver been installed successfully."
}


install_cockatrice() {
    "$script_dir/install_cockatrice.sh" --install
    zenity --info --title="Installation Complete" --text="Cockatrice has been installed successfully."
}


install_thorium() {
    "$script_dir/install_thorium.sh" --install
    zenity --info --title="Installation Complete" --text="Thorium has been installed successfully."
}


remove_burpsuite() {
    if [ -e "$burpsuite_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo /opt/BurpSuiteCommunity/uninstall
        rm "$HOME/Desktop/burpsuite.desktop"
        rm "$burpsuite_desktop"
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
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt purge firefox-esr -y
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo add-apt-repository --remove ppa:mozillateam/ppa
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt update
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf tor-browser
        rm "$HOME/Desktop/tor.desktop"
        rm "$tor_desktop"
        zenity --info --title="Removal Complete" --text="Tor Browser has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Tor Browser is not installed."
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

remove_nautilus() {
    if [ -e "$nautilus_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt purge nautilus
        rm "$HOME/Desktop/nautilus.desktop"
        rm "$nautilus_desktop"
        zenity --info --title="Removal Complete" --text="nautilus has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="nautilus is not installed."
    fi
}

remove_thunderbird() {
    if [ -e "$thunderbird_desktop" ]; then
        apt purge thunderbird -y
        rm "$HOME/Desktop/thunderbird.desktop"
        rm "$thunderbird_desktop"
        zenity --info --title="Removal Complete" --text="thunderbird has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="thunderbird is not installed."
    fi
    
}

remove_sasm() {
    if [ -e "$sasm_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 sudo apt purge sasm*
        rm "$HOME/Desktop/sasm.desktop"
        rm "$sasm_desktop"
        zenity --info --title="Removal Complete" --text="sasm has been removed successfully."
    else
        zenity --error --title="Removal Error" --text="sasm is not installed."
    fi
}

remove_wine() {
    if [ -e "$wine_desktop" ]; then
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm -rf wine32 wine64 .wine32 .wine64
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/wine32
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/wine64
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/winetricks
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/winetricks32
        proot-distro login ubuntu --user $varname --shared-tmp -- env DISPLAY=:1.0 rm /usr/local/bin/winetricks64
        rm "$HOME/Desktop/wine32.desktop"
        rm "$HOME/Desktop/wine64.desktop"
        rm "$PREFIX/share/applications/wine32.desktop"
        rm "$PREFIX/share/applications/wine64.desktop"
        rm "$wine_desktop"
        zenity --info --title="Removal Complete" --text="Box86, Box64 and Wine have been removed successfully."
    else
        zenity --error --title="Removal Error" --text="Box86, Box64 and Wine are not installed."
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
    burpsuite_status=$(check_burpsuite_installed)
    miniforge_status=$(check_miniforge_installed)
    owncloud_status=$(check_owncloud_installed)
    tor_browser_status=$(check_tor_browser_installed)
    libreoffice_status=$(check_libreoffice_installed)
    code_status=$(check_code_installed)
    vlc_status=$(check_vlc_installed)
    notion_status=$(check_notion_installed)
    nautilus_status=$(check_nautilus_installed)
    thunderbird_status=$(check_thunderbird_installed)
    sasm_status=$(check_sasm_installed)
    wine_status=$(check_wine_installed)
    onepassword_status=$(check_onepassword_installed)
    dbeaver_status=$(check_dbeaver_installed)
    thorium_status=$(check_thorium_installed)

    # Define the actions based on the installation status
    if [ "$burpsuite_status" == "Installed" ]; then
        burpsuite_action="Remove burpsuite (Status: Installed)"
        burpsuite_description="A web hack application"
    else
        burpsuite_action="Install burpsuite (Status: Not Installed)"
        burpsuite_description="A web hack application"
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

    if [ "$nautilus_status" == "Installed" ]; then
        nautilus_action="Remove nautilus (Status: Installed)"
        nautilus_description="A linux explorer"
    else
        nautilus_action="Install nautilus (Status: Not Installed)"
        nautilus_description="A linux explorer"
    fi
    
    if [ "$thunderbird_status" == "Installed" ]; then
        thunderbird_action="Remove thunderbird (Status: Installed)"
        thunderbird_description="A mail client"
    else
        thunderbird_action="Install thunderbird (Status: Not Installed)"
        thunderbird_description="A mail client"
    fi


    if [ "$sasm_status" == "Installed" ]; then
        sasm_action="Remove sasm (Status: Installed)"
        sasm_description="disasseblie "
    else
        sasm_action="Install sasm (Status: Not Installed)"
        sasm_description="disasseblie "
    fi

    if [ "$wine_status" == "Installed" ]; then
        wine_action="Remove Box86, Box64 and Wine (Status: Installed)"
        wine_description="lets you run x86_64 Linux and Windows programs"
    else
        wine_action="Install Box86, Box64 and Wine (Status: Not Installed)"
        wine_description="lets you run x86_64 Linux and Windows programs"
    fi

    if [ "$onepassword_status" == "Installed" ]; then
        onepassword_action="Remove 1password (Status: Installed)"
        onepassword_description="Go ahead. Forget your passwords."
    else
        onepassword_action="Install 1password (Status: Not Installed)"
        onepassword_description="Go ahead. Forget your passwords."
    fi


    if [ "$dbeaver_status" == "Installed" ]; then
        dbeaver_action="Remove Dbeaver (Status: Installed)"
        dbeaver_description="Dbeaver-SQL App"
    else
        dbeaver_action="Install Dbeaver (Status: Not Installed)"
        dbeaver_description="Dbeaver-SQL App"
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
    FALSE "$burpsuite_action" "$burpsuite_description" \
    FALSE "$miniforge_action" "$miniforge_description" \
    FALSE "$owncloud_action" "$owncloud_description" \
    FALSE "$tor_browser_action" "$tor_browser_description" \
    FALSE "$libreoffice_action" "$libreoffice_description" \
    FALSE "$code_action" "$code_description" \
    FALSE "$vlc_action" "$vlc_description" \
    FALSE "$notion_action" "$notion_description" \
    FALSE "$nautilus_action" "$nautilus_description" \
    FALSE "$thunderbird_action" "$thunderbird_description" \
    FALSE "$sasm_action" "$sasm_description" \
    FALSE "$onepassword_action" "$onepassword_description" \
    FALSE "$wine_action" "$wine_description" \
    FALSE "$dbeaver_action" "$dbeaver_description" \
    FALSE "$thorium_action" "$thorium_description" \
    SEPARATOR \
    --width=900 --height=500)

    # Check if the user canceled the selection
    if [ -z "$choice" ]; then
        exit 0
    fi

    # Execute the selected action
    case $choice in
        "$burpsuite_action")
            if [ "$burpsuite_status" == "Installed" ]; then
                remove_burpsuite
            else
                install_burpsuite
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
        "$nautilus_action")
            if [ "$nautilus_status" == "Installed" ]; then
                remove_nautilus
            else
                install_nautilus
            fi
            ;;   
        "$thunderbird_action")
            if [ "$thunderbird_status" == "Installed" ]; then
                remove_thunderbird
            else
                install_thunderbird
            fi
            ;;      
        "$sasm_action")
            if [ "$sasm_status" == "Installed" ]; then
                remove_sasm
            else
                install_sasm
            fi
            ;;      
                  
        "$wine_action")
            if [ "$wine_status" == "Installed" ]; then
                remove_wine
            else
                install_wine
            fi
            ;;   
           
        "$onepassword_action")
            if [ "$onepassword_status" == "Installed" ]; then
                remove_onepassword
            else
                install_onepassword
            fi
            ;;   
                
        "$dbeaver_action")
            if [ "$dbeaver_status" == "Installed" ]; then
                remove_dbeaver
            else
                install_dbeaver
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
