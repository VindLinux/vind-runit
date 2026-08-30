#!/bin/sh

mkdir -p /etc/runit/utils
cp -f utils/* /etc/runit/utils/
chmod +x /etc/runit/utils/*

echo "vind-runit installed."
