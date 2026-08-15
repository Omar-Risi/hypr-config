-- ~/.config/hypr/hyprland.lua
-- Entry point. Everything below is host-agnostic (works on desktop
-- or laptop, any GPU, any monitor). Machine-specific overrides
-- (extra monitors, workspace pinning, GPU tuning) live in separate
-- stow packages and are pulled in optionally at the very bottom.
--
-- https://wiki.hypr.land/Configuring/Start/

require("lua.programs")
require("lua.monitors")
require("lua.environment")
require("lua.appearance")
require("lua.input")
require("lua.autostart")
require("lua.binds")
require("lua.windowrules")
require("lua.workspaces_local") -- no pcall, will error loudly if broken

-- Optional per-machine overlays. These files only exist if you've
-- stowed the hypr-desktop or hypr-laptop package on this machine
-- (see the dotfiles README). pcall() means nothing breaks if they
-- aren't present -- the universal rules above just keep applying.
-- pcall(require, "lua.monitors_local") -- enable if you use it
pcall(require, "lua.workspaces_local")
pcall(require, "lua.windowrules_local")
pcall(require, "lua.autostart_local")
