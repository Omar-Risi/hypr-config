-- DESKTOP ONLY -- loaded after lua/monitors.lua's universal rule,
-- so it only needs to state what's specific to this rig: the
-- second monitor, exact refresh rates, rotation, VRR.
--
-- Matched by DESCRIPTION rather than port (DP-2 / HDMI-A-1) on
-- purpose -- port names can renumber across reboots, cable swaps or
-- a GPU change; the description string doesn't.
--
-- Run `hyprctl monitors` and replace the two placeholders below with
-- your real "description" values (e.g. "Dell Inc. DELL S2721DGF ...").

hl.monitor({
	output = "desc:<monitor desc here>",
	mode = "1920x1080@240",
	position = "1440x900",
	scale = 1.0,
})

hl.monitor({
	output = "desc:<monitor desc here>",
	mode = "2560x1440@60",
	position = "0x0",
	scale = 1.0,
	transform = 3,
})

hl.config({
	misc = { vrr = 1 },
})
