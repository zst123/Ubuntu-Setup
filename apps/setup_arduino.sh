sudo snap install arduino
sudo usermod -a -G dialout $USER
sudo snap connect arduino:raw-usb
