#!/usr/bin/env bash
if [[ -e "/root/customize/customize/backgrounds.tar.gz" ]]; then
    mkdir -p /home/archiso/.local/share
    tar -xzf /root/customize/customize/backgrounds.tar.gz -C /home/archiso/.local/share --overwrite
fi
