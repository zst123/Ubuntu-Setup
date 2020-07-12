# Setup manually
#   Startup Applications: Add `nemo-desktop` command.

# Nautilus with typeahead
sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
sudo apt update
sudo apt dist-upgrade -y

# Nautilus Extensions
sudo apt install -y python-nautilus
mkdir -p ~/.local/share/nautilus-python/extensions/
cp ./settings/longdate.py ~/.local/share/nautilus-python/extensions/longdate.py

# Nautilus Gnome Sushi
sudo apt install -y gnome-sushi

# Nautilus Files change preferences
# - Preferences > Show Hidden Files
# - Preferences > General > Allow folders to be expanded
# - Preferences > Behavior > Show action to permanently delete files and folders
dconf write /org/gtk/settings/file-chooser/show-hidden true
dconf write /org/gnome/nautilus/list-view/use-tree-view true
dconf write /org/gnome/nautilus/preferences/show-delete-permanently true

# Install nemo desktop, disable gnome desktop.
## Remember to make nemo-desktop start on boot and disable ubuntu icons
sudo apt install -y nemo
sudo gsettings set org.gnome.desktop.background show-desktop-icons false

# Nemo Desktop change preferences
dconf write /org/nemo/desktop/home-icon-visible true
dfonc write /org/nemo/desktop/volumes-visible true

# To remove typeahead:
# sudo apt install ppa-purge
# sudo ppa-purge ppa:lubomir-brindza/nautilus-typeahead

# To make nemo the default file manager entirely:
# xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
# gsettings set org.gnome.desktop.background show-desktop-icons false
# gsettings set org.nemo.desktop show-desktop-icons true
