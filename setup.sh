#!/bin/sh

sudo dnf update -y
sudo dnf copr enable solopasha/hyprland -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager --enable fedora-cisco-openh264
set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo installing the must-have pre-requisites
while read -r p ; do sudo dnf install  $p -y ; done < <(cat << "EOF"
    wget
    NetworkManager-tui
    pavucontrol
    alsa-utils
    blueman
    unzip
    rsync
    figlet
    hyprland
    waybar
    wofi
    waypaper
    kitty
    dunst
    Thunar
    xdg-desktop-portal-hyprland
    qt5-qtwayland
    qt6-qtwayland
    hyprlock
    hyprshot
    zsh
    fontawesome-6-free-fonts
    vim
    vim-enhanced
    neovim
    python3-pip
    fastfetch
    wlogout
    python3-gobject
    gtk4
    stow 
EOF
)

sudo pip3 install pywal

##stow .
