#!/bin/bash
# based on https://forums.fedoraforum.org/showthread.php?319036-Export-import-GNOME-shell-keybindings-(Fedora-28)&p=1811809#post1811809
echo setting input sources...
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'ch')]"
