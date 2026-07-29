#!/usr/bin/env bash

# Replace 'Light-Theme' and 'Dark-Theme' with the actual names of your light and dark themes respectively:
 
LIGHT_THEME="Light-Theme"
DARK_THEME="Dark-Theme"

switch_theme() {
    local theme="$1"

    current_theme=$(xfconf-query -c xsettings -p /Net/ThemeName)

    if [[ "$current_theme" != "$theme" ]]; then
        xfconf-query -c xsettings -p /Net/ThemeName -s "$theme"
        xfconf-query -c xfwm4 -p /general/theme -s "$theme"
        echo "$(date): Switched to $theme"
    fi
}

while true; do
    current_hour=$(date +%-H)

# Replace '7' and '20' with desired hours (in 24 hr time format):

    if [[ "$current_hour" -ge 7 && "$current_hour" -lt 20 ]]; then
        switch_theme "$LIGHT_THEME"
    else
        switch_theme "$DARK_THEME"
    fi

    sleep 300
done

# Created by: ndwolfwood
