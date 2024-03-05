#!/usr/bin/bash

# this sets up steamos in my prefered way

# adds flatpak user
echo "Switching to flatpak user..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo --user

# Configure flatpak
echo "Configuring flatpak..."
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro
flatpak override --system --filesystem=xdg-config/gtk-3.0:ro

# Configure distrobox
echo "Configuring ~/.distroboxrc..."
echo "xhost +si:localuser:$USER" > ~/.distroboxrc

# Configure .bashrc
echo "Configuring .bashrc..."
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc

# Install neofetch
echo "Installing neofetch..."
rm -f ~/.local/bin/neofetch
wget -P ~/.local/bin https://raw.githubusercontent.com/hykilpikonna/hyfetch/master/neofetch
chmod +x ~/.local/bin/neofetch

# Install some user flatpaks
echo "Installing flatpaks..."
flatpak install flathub org.mozilla.firefox --system --or-update -y
flatpak install flathub org.kde.kcalc --system --or-update -y
flatpak install flathub org.kde.kclock --system --or-update -y


