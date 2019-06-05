# create local git dir
sudo mkdir /var/git/
sudo chown mat:mat /var/git/

# create link
ln -s /var/git/ ~/git

# ssh clone devbox
git clone git@github.com:mha0/devbox.git ~/git/devbox

# cleanup
rm -rf ~/devbox-master
