# based on https://forums.fedoraforum.org/showthread.php?319036-Export-import-GNOME-shell-keybindings-(Fedora-28)&p=1811809#post1811809
dconf load /org/gnome/desktop/wm/keybindings/ < wm-keybindings.dconf.bak
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < media-keys-keybindings.dconf.bak
