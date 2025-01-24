#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with root"
  exit
fi

echo "--- Thank you for using our scripts ---"
echo "--- This script will help you complete the system setup ---"
echo "Which browser will be installed? (select a number)"
echo "1. firefox 2. chromium 3. skip"
while true; do
read -p "enter the selection: " numbrow

if [ $numbrow -eq 1 ]; then
    sudo pacman -S firefox
    break
  elif [ $numbrow -eq 2 ]; then
    sudo pacman -S chromium
    break
  elif [ $numbrow -eq 3 ]; then
    break
  else
    echo "Uncorrected input."
  fi
done

sudo pacman -Syu
sudo pacman -S --noconfirm hyprland ly kitty git yay flatpak
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-firacode-nerd
sudo fc-cache -fv
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo systemctl --now enable ly.service
