#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with root"
  exit
fi

sudo pacman -Sy
sudo pacman -S xorg xorg-server xorg-xinit xorg-apps mesa-libgl

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

echo "Which video drivers will be installed? (select a number)"
echo "1. Nvidia 2. AMD 3. Intel 4. skip"
while true; do
read -p "enter the selection: " numdrivers

if [ $numdrivers -eq 1 ]; then
    sudo pacman -S nvidia nvidia-settings
    break
  elif [ $numdrivers -eq 2 ]; then
    sudo pacman -S xf86-video-ati
    break
  elif [ $numdrivers -eq 3 ]; then
    sudo pacman -S xf86-video-intel
    break
  elif [ $numdrivers -eq 4 ]; then
    break
  else
    echo "Uncorrected input."
  fi
done

sudo pacman -S --noconfirm hyprland ly kitty git yay flatpak vlc pulseaudio 
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-firacode-nerd
sudo fc-cache -fv
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo systemctl --now enable ly.service

echo "Which DE will be installed? (select a number)"
echo "1. Gnome 2. KDE 3. skip"
while true; do
read -p "enter the selection: " numde

if [ $numde -eq 1 ]; then
    sudo pacman -S gnome gdm ttf-dejavu gnome-extra
    sudo systemctl enable gdm
    break
  elif [ $numde -eq 2 ]; then
    sudo pacman -S plasma sddm sddm-kcm kde-applications
    sudo systemctl enable sddm
    break
  elif [ $numde -eq 3 ]; then
    break
  else
    echo "Uncorrected input."
  fi
done
