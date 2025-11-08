#!/usr/bin/env bash
if [[ -e "/root/customize/customize/autostart/org.gnome.Console.desktop" ]]; then
    mkdir -p /home/archiso/.config/autostart
    cp -f /root/customize/customize/autostart/org.gnome.Console.desktop /home/archiso/.config/autostart/org.gnome.Console.desktop
fi
