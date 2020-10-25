#!/usr/bin/env bash
#======================================================
#   / \   _ __ ___| |__   |_ _|_ __  ___| |_ __ _| | |
#  / _ \ | '__/ __| '_ \   | || '_ \/ __| __/ _` | | |
# / ___ \| | | (__| | | |  | || | | \__ \ || (_| | | |
#/_/   \_\_|  \___|_| |_| |___|_| |_|___/\__\__,_|_|_|
#        
#======================================================

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel

    # TERMINAL UTILITIES --------------------------------------------------

    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'elinks'                # Terminal based web browser
    'feh'                   # Terminal-based image viewer/manipulator
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    'ntp'                   # Network Time Protocol to set time via network.
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'xfce4-terminal'        # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell


    # DISK UTILITIES ------------------------------------------------------
    'android-tools'         # ADB for Android
    'android-file-transfer' # Android File Transfer
    'autofs'                # Auto-mounter
    'btrfs-progs'           # BTRFS Support
    'dosfstools'            # DOS Support
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gvfs-mtp'              # Read MTP Connected Systems
    'gvfs-smb'              # More File System Stuff
    'nautilus-share'        # File Sharing in Nautilus
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility
    'samba'                 # Samba File Sharing
    'smartmontools'         # Disk Monitoring
    'smbclient'             # SMB Connection 
    'xfsprogs'              # XFS Support
    'gvfs-gphoto2'          # XFS Support
    'f2fs-tools'
    'lvm2'
    'mtools'
    'nfs-utils'
    'nilfs-utils'
    'mlocate'
    'gvfs-afc'
    'gvfs-goa'
    'gvfs-nfs'
    
    # GENERAL UTILITIES ---------------------------------------------------

    'flameshot'             # Screenshots
    'nautilus'              # File Manager
    'newsboat'              # RSS manager

    # DEVELOPMENT ---------------------------------------------------------

    'gedit'                  # Text editor
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'qtcreator'             # C++ cross platform IDE
    'qt5-examples'          # Project demos for Qt
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'firefox'               # Web browser
    'filezilla'             # FTP Client
    'qbittorrent'           # FTP Client
    
    # MEDIA ---------------------------------------------------------------
    'kdenlive'              # Movie Render
    'mpv'                   # Video player
    'mplayer'               # Video player

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'xpdf'                  # PDF viewer

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo