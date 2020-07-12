# --------- Gnome Terminal ---------

# - Preferences > Shortcuts > Terminal > Reset and clear the terminal > Ctrl+Shift+K
dconf write /org/gnome/terminal/legacy/keybindings/reset-and-clear "'<Primary><Shift>k'"

# - Preferences > General > Open new terminals in: Tab
dconf write /org/gnome/terminal/legacy/new-terminal-mode "'tab'"

# Dark theme with 15% transparency
dconf write /org/gnome/terminal/legacy/theme-variant "'dark'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-transparency-percent 5
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-colors false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-transparency false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background true

# --------- Tilix ---------
#sudo apt-get install -y tilix
# Replace terminal with tilix
#gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/tilix
#gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
#sudo update-alternatives --config x-terminal-emulator
# Replace menu item with "Open with Tilix"
#sudo apt-get install -y python-nautilus
#sudo apt remove -y --purge nautilus-extension-gnome-terminal
