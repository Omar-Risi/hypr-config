-- DESKTOP ONLY -- replicates your old
-- `windowrule = monitor DP-2, match:class steam_app_2050650`
--
-- NOTE: monitor-pinning-via-windowrule is a less-documented corner
-- of the new Lua API -- I couldn't fully verify the exact field name
-- against the wiki, so double check this against
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/ and adjust
-- if Hyprland complains on reload.
hl.window_rule({
	name = "steam-big-picture-monitor",
	match = { class = "steam_app_2050650" },
	monitor = "desc:<monitor desc here>",
})
