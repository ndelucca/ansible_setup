#!/bin/bash

apt update

apt install -y wget curl apt-transport-https

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

dpkg -i google-chrome-stable_current_amd64.deb

apt --fix-broken install -y

rm google-chrome-stable_current_amd64.deb
