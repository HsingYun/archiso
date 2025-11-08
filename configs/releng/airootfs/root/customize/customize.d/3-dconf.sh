#!/usr/bin/env bash
if [[ -e "/root/customize/customize/dconf/user" ]]; then
    mkdir -p /home/archiso/.config/dconf
    cp -f /root/customize/customize/dconf/user /home/archiso/.config/dconf/user
fi
