# Install Only Office
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
sudo add-apt-repository "deb https://download.onlyoffice.com/repo/debian squeeze main"
sudo apt update
sudo apt install -y onlyoffice-desktopeditors
# sudo snap install onlyoffice-desktopeditors

# install microsoft fonts (use tab to select in EULA)
sudo apt install -y --reinstall ttf-mscorefonts-installer

# rebuild font cache
sudo fc-cache -vr
