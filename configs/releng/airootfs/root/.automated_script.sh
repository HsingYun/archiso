#!/usr/bin/env bash
localedef -i en_US -f UTF-8 en_US.UTF-8
localedef -i zh_CN -f UTF-8 zh_CN.UTF-8
applications_dir="/usr/share/applications"
hide_applications=(
    "avahi-discover.desktop"
    "bssh.desktop"
    "bvnc.desktop"
    "lftp.desktop"
    "qv4l2.desktop"
    "qvidcap.desktop"
    "stoken-gui-small.desktop"
    "stoken-gui.desktop"
    "vim.desktop"
    "org.gnome.Snapshot.desktop"
)
declare -A hide_applications_map
for file in "${hide_applications[@]}"; do
  hide_applications_map["$file"]=1
done
for file in "$applications_dir"/*; do
  filename=$(basename "$file")
  if [[ ${hide_applications_map["$filename"]} ]]; then
    if [[ -e "$file" ]]; then
      rm -f "$file"
    fi
  fi
done
