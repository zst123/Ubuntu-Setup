So the field called StartupWMClass is a string that defines in which class the application is grouped in the Unity Launcher at startup.

You can find out which WM_CLASS your window has got when you type in a terminal:

	xprop WM_CLASS

and then click at the window. In case of the gnome terminal the output is as follows:

	WM_CLASS(STRING) = "gnome-terminal", "Gnome-terminal"

### VMware Workstation

- StartupWMClass=vmware
- /usr/share/applications/vmware-workstation.desktop

### STM32CubeIDE

- StartupWMClass=STM32CubeIDE
- /usr/share/applications/st-stm32cubeide-1.3.0.desktop

### OnlyOffice

- StartupWMClass=DesktopEditors
- /usr/share/applications/onlyoffice-desktopeditors.desktop
