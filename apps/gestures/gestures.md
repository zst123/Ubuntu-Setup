# Installation

	sudo bash gestures-install.sh

# Gestures

	gesture swipe up 3 dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.show();'
	gesture swipe down 3 dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.hide();'
	gesture swipe left 3 xdotool key super+Page_Down
	gesture swipe right 3 xdotool key super+Page_Up
	#D: gesture pinch out 2 xdotool key ctrl+plus
	#D: gesture pinch in 2 xdotool key ctrl+minus
