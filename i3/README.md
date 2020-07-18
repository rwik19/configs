## dmenu
Install *dmenu*.
Edit **/etc/locale.gen**. Uncomment en_US.UTF-8
    sudo locale-gen
    sudo localectl set-locale LANG=en_US.UTF-8
## Power Management
Install *tlp*.
Install *powertop*.
## Power button settings
Edit **/etc/systemd/logind.conf**. 
Set **HandlePowerKey=ignore**.
## Screen Brightness
Install *xorg-xbacklight*.
## Trackpad
Install *xorg-xinput*.
Type 
    xinput --list
and look at device name.
Type
    xinput --list-props 'device_name'
Turn on gestures using *libinput-gestures* and *gestures gui*.
## Bluetooth
Install *blueberry*.
## Desktop Background
Install feh

