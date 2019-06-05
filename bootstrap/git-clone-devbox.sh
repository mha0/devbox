# create local git dir
sudo mkdir /var/git/
chown mat:mat /var/git/

# create link
sudo ln -s /var/git/ ~/git

# ssh clone devbox
git clone git@github.com:mha0/devbox.git ~/git/devbox

# cleanup
rm -rf ~/devbox
