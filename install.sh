#!/bin/sh
set -e

mkdir -p /etc/runit/utils
mkdir -p /etc/service

cp -f runit/1 runit/2 runit/3 /etc/runit/
chmod +x /etc/runit/1 /etc/runit/2 /etc/runit/3

cp -f utils/* /etc/runit/utils/
chmod +x /etc/runit/utils/*

cp -f commands/* /usr/sbin/
chmod +x /usr/sbin/poweroff /usr/sbin/reboot

for service in service/*; do
    name="$(basename "$service")"

    mkdir -p "/etc/service/$name"
    cp -f "$service/run" "/etc/service/$name/run"
    chmod +x "/etc/service/$name/run"
done

echo "vind-runit installed."
