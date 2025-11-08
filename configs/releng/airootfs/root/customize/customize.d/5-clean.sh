#!/usr/bin/env bash
if [[ -e "/etc/group-" ]]; then
    rm -f /etc/group-
fi

if [[ -e "/etc/passwd-" ]]; then
    rm -f /etc/passwd-
fi

if [[ -e "/etc/shadow-" ]]; then
    rm -f /etc/shadow-
fi

if [[ -e "/etc/.pwd.lock" ]]; then
    rm -f /etc/.pwd.lock
fi
