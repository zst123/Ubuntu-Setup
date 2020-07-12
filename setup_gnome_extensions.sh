# Install these manually:
#   https://extensions.gnome.org/extension/2950/compiz-alike-windows-effect/
#   https://extensions.gnome.org/extension/779/clipboard-indicator/
#   https://extensions.gnome.org/extension/1007/window-is-ready-notification-remover/
#   https://extensions.gnome.org/extension/2338/overview-button/

# Overview button
dconf write /org/gnome/shell/extensions/overview-button/button-type "'workspace-name'"

# compiz-alike-windows-effect
dconf write /org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-windows-effect/friction 10.0
dconf write /org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-windows-effect/spring 50.0
dconf write /org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-windows-effect/manual-restore-factor 4.0
dconf write /org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-windows-effect/skip-frames-before-spring-start 20.0

# Impatience
# - Speed: 0.4
dconf write /org/gnome/shell/extensions/net/gfxmonk/impatience/speed-factor 0.4

# Clipboard Indicator
# - History Size: 10
# - Refresh Interval: 5000
# - What to show in top bar: Both
# - Number of characters in top bar: 8
dconf write /org/gnome/shell/extensions/clipboard-indicator/history-size 10
dconf write /org/gnome/shell/extensions/clipboard-indicator/refresh-interval 5000
dconf write /org/gnome/shell/extensions/clipboard-indicator/display-mode 0
dconf write /org/gnome/shell/extensions/clipboard-indicator/topbar-preview-size 8

# To monitor changes:
# $ dconf watch /
