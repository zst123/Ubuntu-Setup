# Gnome tweaks
sudo apt install -y gnome-tweaks

# Ubuntu Dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"

# Ubuntu interface
gsettings set org.gnome.desktop.interface show-battery-percentage true
# gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'cycle-windows'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface locate-pointer true

# Theming for QT apps
sudo apt install -y qt5-style-kvantum qt5-style-kvantum-themes
echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile
kvantummanager --set KvGnomeDark
#kvantummanager --set KvYaru
