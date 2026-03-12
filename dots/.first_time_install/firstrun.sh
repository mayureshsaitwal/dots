#!/bin/bash

current_dir=$(pwd)
scripts_dir=$current_dir/scripts
logs=$pwd/first.logs

# Create Log Files
touch $logs
echo $scripts_dir

# Installing Pacakges
sudo yay -S --noconfirm - < $current_dir/packages/pacman
sudo yay -S --noconfirm - < $current_dir/packages/yay

# Installing extra packages
# ./$current_dir/scripts/
for f in $scripts_dir/*; do
  bash $f >> $logs
done


# cp $pwd/files/blacklist.conf /etc/modprobe.d/blacklist.conf
