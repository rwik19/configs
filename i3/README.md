# i3-gaps configs
## Themes
Plata Noir  
Tela Blue icons  

## dmenu
Install *dmenu*.  
Edit **/etc/locale.gen**. Uncomment en_US.UTF-8.  
    sudo locale-gen  
    sudo localectl set-locale LANG=en_US.UTF-8  

## Termite
install *termite*  
to open nvim in termite,  
edit /usr/share/applications/nvim.desktop  
Terminal=false
Exec=/path/to/vim-script.sh  
vim-script.sh is in the nvim folder

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

## Volume
install *pavucontrol*  
install *i3-volume*  
install *notify-osd*  

## Font
install *ttf-font-awesome*  
install *awesome-terminal-fonts*  
install *powerline-onts*  
install Monaco  

## Status bar
Install *bumblebee-status*  

## Transparency
Install picom-tryone-git  
Keep the picom folder in ~/.config  
