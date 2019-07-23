# https://stackoverflow.com/a/30006917

# Backup settings
cp ~/.atom/config.cson ./post-install/atom-settings/

# Backup package list
apm list --installed --bare > ./post-install/atom-settings/package.list