#!/bin/bash
# ~/.config/waybar/scripts/get-nic.sh

nic=$(ip route get 1.1.1.1 | awk '{for(i=1;i<=NF;i++) if($i=="dev") print $(i+1); exit}')
printf '%s' "$nic"
