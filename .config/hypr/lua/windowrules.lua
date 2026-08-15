-- Window rules that make sense on any machine.
-- Monitor-pinning rules (e.g. forcing Steam Big Picture onto one
-- specific display) are host-specific and live in
-- lua/windowrules_local.lua on the desktop package instead.
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})
