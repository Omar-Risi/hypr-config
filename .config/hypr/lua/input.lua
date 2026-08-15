-- Keyboard + touchpad. kb_layout "us,ara" with alt+shift toggle works
-- identically whether the machine has a touchpad or not.
hl.config({
    input = {
        kb_layout    = "us,ara",
        kb_options   = "grp:alt_shift_toggle",
        follow_mouse = 1,
        sensitivity  = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})
