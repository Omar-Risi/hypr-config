# Hyprland lua config
Since you want to use this config file note that some of the stuff here are hardcoded for Omar's setup 
therefore, confirm these things before you press the `hyprctl reload`. 

#### NOTE: YOU MUST INSTALL THE STUFF FROM THE README FIRST
Incase you missed them here they are :) 

using yay: 
`yay -S --needed \
  wezterm brave-bin dolphin hyprlauncher waybar \
  swww mako gnome-keyring udiskie polkit-kde-agent \
  wl-clipboard cliphist rofi-wayland rofimoji \
  grim slurp hyprlock hyprshutdown \
  playerctl brightnessctl libpulse libnotify \
  power-profiles-daemon nwg-displays stow`

#### Monitors and placement.
Check these files for your actual monitors instead of mine. and make sure your placement is correct too!

NOTE: you can find your monitors description using this cmd
`hyprctl monitors | grep description`


files to check: 
`windowrules_local.lua`
`workspaces_local.lua`
`monitors_local.lua`


#### AUTO START
if you don't want your battery gone I suggest your comment out the `autostart_local.lua` in your `hyprland.lua`.
