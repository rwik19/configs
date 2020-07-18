#!/bin/bash
str=$(xinput --list-props 'ELAN1300:00 04F3:3087 Touchpad' | grep 'Device Enabled')
str="${str: -1}"
if [ "$str" -eq "0" ]; then
    xinput set-prop 'ELAN1300:00 04F3:3087 Touchpad' 'Device Enabled' 1
elif [ "$str" -eq "1" ]; then
    xinput set-prop 'ELAN1300:00 04F3:3087 Touchpad' 'Device Enabled' 0
fi
