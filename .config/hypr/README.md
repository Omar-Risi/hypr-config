# Hyprland lua config
Since you want to use this config file note that some of the stuff here are hardcoded for Omar's setup 
therefore, confirm these things before you press the `hyprctl reload`. 

#### NOTE: YOU MUST INSTALL THE STUFF FROM THE README FIRST
Note that some programs you may not use check `lua/programs.lua`

Incase you missed them here they are :) 

##### yay: 
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
`lua/windowrules_local.lua`
`lua/workspaces_local.lua`
`lua/monitors_local.lua`

#### Customization
All needed customization to match local device files are suffixed with `_local.lua` 
You can change it from there.


#### AUTO START
if you don't want your battery gone I suggest your comment out the `lua/autostart_local.lua` in your `hyprland.lua`.
