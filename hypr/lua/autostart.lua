-- Autostart -- daemons that make sense on EVERY machine.
-- GPU/host-specific startup commands (nvidia-smi, power profile,
-- etc.) live in lua/autostart_local.lua on the desktop package --
-- keeping them out of here is what makes this file laptop-safe too.
-- https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
	hl.exec_cmd("powerprofilesctl set performance")
	hl.exec_cmd("waybar")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("awww img ~/Pictures/wallpapers/bg.jpg --transition-type fade")
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets,pkcs11,ssh")
	hl.exec_cmd("udiskie --no-notify")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
	hl.exec_cmd("mako")
	-- hl.exec_cmd("hypridle") -- left disabled, per your old config's note that it caused issues
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
	hl.exec_cmd("wl-paste --watch cliphist store")
end)
