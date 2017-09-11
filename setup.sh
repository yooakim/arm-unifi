#!/bin/bash
# exit on any error
set -e

# This Bash script installs UniFi controlloer into a fresh Debian system
# Ref: - https://help.ubnt.com/hc/en-us/articles/220066768-UniFi-How-to-Install-Update-via-APT-on-Debian-or-Ubuntu

# Add the UniFi repository to the sources list, using the following commands
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee -a /etc/apt/sources.list.d/ubnt.list > /dev/null

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
sudo apt-get update
sudo apt-get upgrade -yqq
sudo apt-get install unifi

