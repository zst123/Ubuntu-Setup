VERSION="9.6.2"
FILE="/home/$USER/Apps/eagle-$VERSION/eagle"
if [ -f "$FILE" ]; then
    cp -i ../settings/eagle_pcb.desktop ~/.local/share/applications/eagle_pcb.desktop

    sed -i "s/9.3.0/$VERSION/g" ~/.local/share/applications/eagle_pcb.desktop
    sed -i "s/youruser/$USER/g" ~/.local/share/applications/eagle_pcb.desktop
else
	echo "EAGLE PCB is not found."
	echo "Please install EAGLE PCB to this location:"
	echo "$FILE"
fi

# Download EAGLE and extract it into ~/Apps/eagle-9.6.2
# https://www.autodesk.com/products/eagle/free-download

