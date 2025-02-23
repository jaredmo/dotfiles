battery_status=$(cat /sys/class/power_supply/BATT/status)
battery_level=$(cat /sys/class/power_supply/BATT/capacity)
date_formatted=$(date +'%Y-%m-%d %X')

echo $battery_status $battery_level'%' $date_formatted
