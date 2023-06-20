#!/bin/sh

apt update
apt install -y zsh ssh sudo

useradd -ms /bin/zsh dev
usermod -aG sudo dev
echo 'dev:docker' | chpasswd
