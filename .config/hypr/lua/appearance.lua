-- Look and feel: general, decoration, dwindle, misc.
-- https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(4a9fffee)", "rgba(0066ccee)" }, angle = 45 },
			inactive_border = "rgba(1a1a1aaa)",
		},
		resize_on_border = true,
		layout = "dwindle",
	},

	decoration = {
		rounding = 8,
		active_opacity = 1.0,
		inactive_opacity = 0.92,
		fullscreen_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 12,
			render_power = 3,
			color = 0xee0a0a0a, -- rgba(0a0a0aee)
			color_inactive = 0x880a0a0a, -- rgba(0a0a0a88)
		},
		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			xray = false,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		preserve_split = true,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
	},
})

-- Bezier curves + animation leaves
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("smooth", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("snappy", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "smooth", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smooth", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, bezier = "smooth", speed = 6 })
hl.animation({ leaf = "fade", enabled = true, bezier = "smooth", speed = 4 })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "snappy", style = "slide" })
