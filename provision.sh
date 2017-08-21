#!/bin/sh

sudo apt-get remove -y unattended-upgrades
sudo apt-get autoremove -y
sudo apt-get clean
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY

cat /dev/null > ~/.bash_history && history -c && exit
