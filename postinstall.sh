#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with root"
  exit
fi

sudo pacman -S firefox kitty zsh git stow ly
sudo pacman -S nemo file-roller nemo-fileroller
sudo pacman -S hyprland xdg-desktop-portal-hyprland hyprpolkitagent hyprpaper hypridle hyprlock
sudo pacman -S waybar wofi swaync fastfetch brightnessctl
sudo pacman -S pipewire pipewire-jack pipewire-alsa pipewire-pulse wireplumber
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-firacode-nerd ttf-meslo-nerd
sudo fc-cache -fv

sudo systemctl --now enable ly.service
