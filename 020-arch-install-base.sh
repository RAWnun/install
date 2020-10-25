cinnamon
cinnamon-translations
gnome-terminal
gnome-system-monitor
gnome-screenshot
iso-flag-png
mintlocale
nemo-fileroller
#!/usr/bin/env bash
#======================================================
#   / \   _ __ ___| |__   |_ _|_ __  ___| |_ __ _| | |
#  / _ \ | '__/ __| '_ \   | || '_ \/ __| __/ _` | | |
# / ___ \| | | (__| | | |  | || | | \__ \ || (_| | | |
#/_/   \_\_|  \___|_| |_| |___|_| |_|___/\__\__,_|_|_|
#        
#======================================================

echo -e "\nInstalling Base System\n"

PKGS=(

    # --- XORG Display Rendering
        'xorg'                  # Base Package
        'xorg-drivers'          # Display Drivers 
        'xterm'                 # Terminal for TTY
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xorg-xinput'           # Xorg xinput
        'mesa'                  # Open source version of OpenGL
        'xf86-video-amdgpu'     # Amd gpu drivers


    # --- Setup Desktop
        'cinnamon'         # Awesome Desktop
        'cinnamon-translations'                 # Power Manager 
        'gnome-terminal'                  # Menu System
        'gnome-system-monitor'                 # Translucent Windows
        'gnome-screenshot'                 # System Clipboard
        'iso-flag-png'          # Elevate Applications
        'mintlocale'
        'nemo-fileroller'
        'metacity'
        'gnome-shell'
        'dmenu'
        'imagemagick'
        'hardcode-fixer-git'
        'dconf-editor'
   
    # --- Login Display Manager
        'lightdm'                   # Base Login Manager
        'lightdm-webkit2-greeter'   # Framework for Awesome Login Themes

    # --- Networking Setup
        'wpa_supplicant'            # Key negotiation for WPA wireless networks
        'dialog'                    # Enables shell scripts to trigger dialog boxex
        'networkmanager'            # Network connection manager
        'openvpn'                   # Open VPN support
        'networkmanager-openvpn'    # Open VPN plugin for NM
        'networkmanager-vpnc'       # Open VPN plugin for NM. Probably not needed if networkmanager-openvpn is installed.
        'network-manager-applet'    # System tray icon/utility for network connectivity
        'dhclient'                  # DHCP client
        'libsecret'                 # Library for storing passwords
        'avahi'
        'nss-mdns'
        'gvfs-smb'


    # --- Audio
            'alsa-utils'        # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
            'alsa-plugins'      # ALSA plugins
            'pulseaudio'        # Pulse Audio sound components
            'pulseaudio-alsa'   # ALSA configuration for pulse audio
            'pavucontrol'       # Pulse Audio volume control
            'volumeicon'        # System tray volume control

    # --- Bluetooth
        'bluez'                 # Daemons for the bluetooth protocol stack
        'bluez-utils'           # Bluetooth development and debugging utilities
        'bluez-firmware'        # Firmwares for Broadcom BCM203x and STLC2300 Bluetooth chips
        'blueberry'             # Bluetooth configuration tool
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio
   
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo -e "\nDone!\n"
