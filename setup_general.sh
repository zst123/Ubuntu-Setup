# Setup
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt-get update -y
sudo apt update -y
sudo apt install -y ppa-purge

# Change snap update frequency (last Friday of the month)
sudo snap set system refresh.timer=fri5,00:00~23:00
snap refresh --time

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb && rm ./google-chrome*.deb

# Development
sudo apt install -y python3-pip python3-tk
sudo apt install -y default-jre
sudo apt install -y git
sudo apt install -y docker.io
sudo apt install -y curl
sudo apt install -y libncurses5
sudo apt install -y build-essential

# Utilities
sudo snap install zerotier-one
sudo snap install ffmpeg
sudo snap install gimp
sudo apt install -y vlc
sudo apt install -y kolourpaint

# Tor
sudo apt install -y tor torsocks
sudo systemctl disable tor.service
sudo service tor stop

# Serial port permissions
sudo usermod -a -G tty $USER
sudo usermod -a -G dialout $USER
sudo usermod -a -G plugdev $USER

# .bash_aliases
cat <<- 'EOF' >> ~/.bash_aliases
	# Aliases
	alias open="xdg-open"

	# Python
	export PYTHONPATH="./.pip:$PYTHONPATH"
	
EOF

# Ignore cases in terminal
cat <<- 'EOF' >> ~/.inputrc
#!/usr/bin/env bash

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on

# Set colours to autocomplete
set colored-stats on

# Immediately add a trailing slash when autocompleting symlinks to directories
set mark-symlinked-directories on
EOF

# Disable MOTD SSH login
touch ~/.hushlogin
