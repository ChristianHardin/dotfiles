#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "kdeconnect-indicator"
