#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with root"
  exit
fi

echo "--- Thank you for using our scripts ---"
echo "--- This script will help you complete the system setup ---"
echo "Which browser will be installed? (select a number)"
echo "1. firefox 2. chromium"

sudo pacman -S --noconfirm hyprland ly kitty git
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-firacode-nerd
sudo fc-cache -fv

sudo systemctl --now enable ly.service
