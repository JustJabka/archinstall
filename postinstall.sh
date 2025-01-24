#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with root"
  exit
fi

echo "--- Thank you for using our scripts ---"
echo "--- This script will help you complete the system setup ---"
echo "Which browser will be installed? (select a number)"
echo "1. firefox 2. chromium"
while true; do
read -p "Введите номер: " numbrow

if [ $numbrow -eq 1 ]; then
    sudo pacman -S firefox
    break
  elif [ $numbrow -eq 2 ]; then
    sudo pacman -S chromium
    break
  else
    echo "Uncorrected input."
  fi
done

sudo pacman -S --noconfirm hyprland ly kitty git
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-firacode-nerd
sudo fc-cache -fv

sudo systemctl --now enable ly.service
