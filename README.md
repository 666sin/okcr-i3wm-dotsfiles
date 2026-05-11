Simple-i3wm-dotsfiles.

## Automatic Installation
```bash
git clone [https://github.com/666sin/okcr-i3wm-dotsfiles.git](https://github.com/666sin/okcr-i3wm-dotsfiles.git)
cd okcr-i3wm-dotsfiles
chmod +x install.sh
./install.sh
```


## Manual Installation
```bash
sudo pacman -S i3-wm polybar rofi alacritty picom dunst feh

# 2. Clone the repository
git clone [https://github.com/666sin/okcr-i3wm-dotsfiles.git](https://github.com/666sin/okcr-i3wm-dotsfiles.git)
cd okcr-i3wm-dotsfiles

# 3. Copy configurations to .config directory
cp -r .config/* ~/.config/

# 4. Install fonts
mkdir -p ~/.local/share/fonts/
cp -r fonts/* ~/.local/share/fonts/
fc-cache -fv
```



| Category | Package Name |
| :--- | :--- |
| **WM** | `i3-wm` |
| **Terminal** | `alacritty` |
| **Panel** | `polybar` |
| **Launcher** | `rofi` |
| **Compositor** | `picom` |
| **Wallpaper** | `feh` |
| **Screenshot** | `flameshot` |
| **Notifications** | `dunst` |


## ⌨️ Keybindings Reference

> **Note:** This configuration uses the **Windows key** (Super) as the main **Mod** key.

| Shortcut | Action | Description |
| :--- | :--- | :--- |
| **Mod + Return** | Terminal | Open Alacritty Terminal |
| **Mod + Space** | Launcher | Open Rofi App Launcher |
| **Alt + Shift** | Language | Switch between Arabic & English |
| **Mod + Shift + W** | Wallpaper | Randomly change background wallpaper |
| **Print Screen** | Screenshot | Take a Fullscreen screenshot (Flameshot) |
| **Mod + Shift + S** | Screenshot | Select an area to screenshot (Flameshot) |
| **Mod + Escape** | Kill Mode | Exit / Kill session mode |
| **Mod + Shift + Q** | Kill Window | Close the currently focused window |
| **Mod + Shift + R** | Restart | Restart i3wm to apply changes |
| **Mod + F** | Fullscreen | Toggle fullscreen mode for windows |
