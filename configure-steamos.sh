#!/usr/bin/bash

# this sets up steamos in my prefered way

# use flatpak user instead of flatpak system
echo "Switching to flatpak user..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo --user
flatpak remote-delete flathub --system
flatpak remove --all --system

# Configure flatpak
echo "Configuring flatpak..."
flatpak override --user --filesystem=xdg-config/gtk-3.0:ro

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
flatpak install flathub org.mozilla.firefox --user --or-update
flatpak install flathub org.kde.kcalc --user --or-update
flatpak install flathub org.kde.kclock --user --or-update


