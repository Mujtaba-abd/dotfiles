#!/bin/sh

sudo dnf update -y
sudo dnf copr enable solopasha/hyprland -y

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo installing the must-have pre-requisites
while read -r p ; do sudo dnf install  $p -y ; done < <(cat << "EOF"
    wget
    unzip
    rsync
    figlet
    git 
    hyprland
    waybar
    wofi
    kitty
    dunst
    Thunar
    xdg-desktop-portal-hyprland
    qt5-qtwayland
    qt6-qtwayland
    hyprpaper
    hyprlock
    fontawesome-6-free-fonts
    vim
    vim-enhanced
    neovim
    python3-pip
    fastfetch
    wlogout
    python3-gobject"
    gtk4
    stow 
EOF
)

sudo pip3 install pywal

stow .
