# Albert
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O AlbertRelease.key
sudo apt-key add - < AlbertRelease.key
sudo apt-get update
sudo apt-get install -y albert
rm AlbertRelease.key

# Copy config files
mkdir -p ~/.config/albert/
cp ../settings/albert.conf ~/.config/albert/albert.conf
