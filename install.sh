#!/bin/sh
set -e

mkdir -p /etc/runit/utils /etc/runit/service

cp -f runit/1 runit/2 runit/3 /etc/runit/
chmod +x /etc/runit/1 /etc/runit/2 /etc/runit/3

cp -f utils/* /etc/runit/utils/
chmod +x /etc/runit/utils/*

cp -f commands/* /usr/sbin/
chmod +x /usr/sbin/poweroff /usr/sbin/reboot

echo "vind-runit installed."
