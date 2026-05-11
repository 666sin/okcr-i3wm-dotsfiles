#!/bin/bash

DT=$(date +%Y-%m-%d_%H-%M)
BK_DIR="$HOME/backup_dots_$DT"
mkdir -p "$BK_DIR"

FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

install_fonts() {
    if [ -d "./fonts" ]; then
        cp -r ./fonts/* "$FONT_DIR/"
        fc-cache -fv
    fi
}

sync_configs() {
    TARGETS=("i3" "polybar" "alacritty" "rofi" "dunst")
    for folder in "${TARGETS[@]}"; do
        if [ -d "$HOME/.config/$folder" ]; then
            cp -r "$HOME/.config/$folder" "$BK_DIR/"
            rm -rf "$HOME/.config/$folder"
        fi
        if [ -d "./.config/$folder" ]; then
            cp -r "./.config/$folder" "$HOME/.config/"
        fi
    done

    chmod +x $HOME/.config/polybar/launch.sh 2>/dev/null
    chmod +x $HOME/.config/polybar/scripts/* 2>/dev/null
    chmod +x $HOME/.config/rofi/scripts/* 2>/dev/null
}

enable_services() {
    sudo systemctl enable --now NetworkManager
    sudo systemctl enable --now bluetooth
    sudo systemctl enable --now udisks2
}

set_logic() {
    setxkbmap -layout "us,ara" -option "grp:alt_shift_toggle"
}

install_fonts
sync_configs
enable_services
set_logic
