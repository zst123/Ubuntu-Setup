# Install sublime text
dpkg -s sublime-text &> /dev/null  
if [ $? -ne 0 ]
then
    echo "Installing Sublime Text 3"

	# Install from official sublime test repo
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
	sudo apt install sublime-text

	# Assign as default text editor
	echo "Replace default text editor: org.gnome.gedit.desktop -> sublime_text.desktop;org.gnome.gedit.desktop"
	cp "/usr/share/applications/defaults.list" "$HOME/Documents/defaults.list-backup_$(date -Idate)"
	sudo sed -i 's/org.gnome.gedit.desktop/sublime_text.desktop;org.gnome.gedit.desktop/g' "/usr/share/applications/defaults.list"
else
    echo "Already installed Sublime Text 3"
fi

# Copy preferences
echo "Copy preferences"
mkdir -p "$HOME/.config/sublime-text-3/Packages/User/"
cp -r "../settings/sublime-text-3/." "$HOME/.config/sublime-text-3/Packages/User/"

# Install packages
echo "Installing Package Control (https://packagecontrol.io/installation)"
mkdir -p "$HOME/.config/sublime-text-3/Installed Packages"
wget -O "$HOME/.config/sublime-text-3/Installed Packages/Package Control.sublime-package" "https://packagecontrol.io/Package%20Control.sublime-package"

# Open sublime text
echo "Done"
killall sublime_text
killall sublime-text
