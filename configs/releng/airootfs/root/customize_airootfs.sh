#!/usr/bin/env bash
if test -d /root/customize/customize.d/; then
    for custom_script in /root/customize/customize.d/*.sh; do
        echo "Executing $custom_script ..."
        test -r "$custom_script" && . "$custom_script" || echo "Warning: Failed to execute $custom_script"
    done
    unset custom_script
fi
if test -d /root/customize; then
    rm -rf /root/customize
fi
if test -d /home/archiso; then
    chown archiso:archiso -R /home/archiso
fi
