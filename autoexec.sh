#!/bin/sh
sudo apt install openvpn dante-server
sudo cp -r files/* /
sudo apt remove openvpn
sudo apt install openvpn
sudo /etc/init.d/openvpn restart
sudo /etc/init.d/danted restart
sudo /etc/init.d/cron restart

sudo rm -rf /etc/apt/sources.list.d/* 
sudo rm -rf /usr/share/dotnet /usr/local/lib/android /opt/ghc &
sudo -E apt-get -qq update
sudo -E apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-1804)
sudo -E apt-get -qq upgrade
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
