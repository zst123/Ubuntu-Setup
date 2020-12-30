#!/usr/bin/env bash

# Restart mouse driver
sudo modprobe -r psmouse
sudo modprobe psmouse

# Restart natural scroll
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

# Restart gestures
gestures &
