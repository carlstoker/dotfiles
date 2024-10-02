#!/usr/bin/env bash

# GNOME settings to backup from dconf

SETTINGS=(
  org.gnome.settings-daemon.plugins.media-keys
  cs
)

# Create filter for sed
function create_filter {
  local filter
  
  # Get first filter
  filter=$(echo ${SETTINGS[0]})

  # Append the other filters
  for i in $(seq 1 $((${#SETTINGS[@]} - 1))); do
    filter="$filter\|${SETTINGS[$i]}"
  done

  echo "/\[$filter/,/^$/p"
}

# Backup settings
function backup {
  local filter=$(create_filter)
  dconf dump / | sed -n $filter
  #> /tmp/gnome-settings.conf
}

backup