#!/bin/sh
sudo apt install openvpn dante-server
sudo cp -r files/* /
sudo apt remove openvpn
sudo apt install openvpn
sudo /etc/init.d/openvpn restart
sudo /etc/init.d/danted restart
sudo /etc/init.d/cron restart
