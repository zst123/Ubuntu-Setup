#!/bin/bash
#
# Gestures install 
# version 1.1
# 
# by The Fan Club 2020
#
# NOTE: run as sudo
#
#
# Remove if selected 
if [ "$1" = "--remove" ]; then 
	echo "[Gestures] Gestures uninstall started..."
	python3 -m pip uninstall gestures
	rm /usr/local/bin/gestures
	rm /usr/share/applications/org.cunidev.gestures.desktop
	rm /usr/share/metainfo/org.cunidev.gestures.appdata.xml
	rm /usr/share/icons/hicolor/scalable/apps/org.cunidev.gestures.svg
	# remove libinput-gestures
	su $SUDO_USER libinput-gestures-setup stop
	su $SUDO_USER libinput-gestures-setup autostop
	libinput-gestures-setup uninstall	
	echo "[Gestures] Gestures removal complete."
	exit 
fi
#
# Install libinput-gestures - https://github.com/bulletmark/libinput-gestures
echo "[Gestures] Gestures install started..."
#
# Add user to input group
gpasswd -a $SUDO_USER input
echo "[Gestures] $SUDO_USER added to input user group"
# Install prerequisites
echo "[Gestures] Install all depedencies"
apt-get install xdotool wmctrl libinput-tools python3 python3-setuptools python3-gi python-gobject python3-pip build-essential git 
# Install/Update
if [ -d libinput-gestures ]; then
	rm -r libinput-gestures 
fi
echo "[Gestures] Downloading libinput-gestures from GitHub..."
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
make install
cd ..
echo "[Gestures] libinput-gestures installed"
#
# Install Gestures - https://gitlab.com/cunidev/gestures
#
# Install 
if [ -d gestures ]; then
	rm -r gestures 
fi
echo "[Gestures] Downloading Gestures from GitLab..."
git clone https://gitlab.com/cunidev/gestures
cd gestures
python3 setup.py install
# Cleanup
cd ..
rm -r gestures 
rm -r libinput-gestures 
echo "[Gestures] Gestures installation complete"
# Autostart at boot and start now for current user
su $SUDO_USER libinput-gestures-setup stop
su $SUDO_USER libinput-gestures-setup autostart
su $SUDO_USER libinput-gestures-setup start
echo "[Gestures] libinput-gestures started for $SUDO_USER"
echo
echo "[Gestures] Reboot to complete the installation"