#!/bin/bash

echo "[+] Installing dotfiles..."

# Crear carpetas necesarias
mkdir -p ~/.config

echo "[+] Copying configurations..."

cp -r bspwm ~/.config/
cp -r sxhkd ~/.config/
cp -r polybar ~/.config/
cp -r rofi ~/.config/
cp -r kitty ~/.config/
cp -r nvim ~/.config/

cp .zshrc ~/
cp .p10k.zsh ~/

echo "[+] Setting permissions..."

chmod +x ~/.config/bspwm/bspwmrc 2>/dev/null
chmod +x ~/.config/bspwm/scripts/* 2>/dev/null
chmod +x ~/.config/polybar/launch.sh 2>/dev/null

echo "[+] Done."
echo "[!] Restart your session."
