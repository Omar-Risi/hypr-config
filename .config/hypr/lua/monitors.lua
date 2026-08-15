------------------------------------------------------------------
-- MONITORS -- universal fallback, works on any machine unmodified
------------------------------------------------------------------
-- One rule, matched against every output ("" = wildcard): preferred
-- mode, auto position, auto scale. This is the same fallback shipped
-- in Hyprland's own example config, and it's what makes this file
-- portable across your PC and laptop without editing anything --
-- plug in a fresh monitor and it just gets configured sanely.
--
-- https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-- Anything more specific than this (exact refresh rates, a second
-- monitor's position, rotation, VRR) belongs in lua/monitors_local.lua,
-- which is loaded *after* this file from hyprland.lua -- so it only
-- has to state the handful of values that differ from the default,
-- and only exists on the machine(s) that need it.
