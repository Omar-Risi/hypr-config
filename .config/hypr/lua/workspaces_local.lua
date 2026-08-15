-- DESKTOP ONLY -- pins workspaces 1-5 to the primary monitor and
-- 6-9 to the secondary, matching your old workspace = N,
-- monitor:DP-2 / monitor:HDMI-A-1 assignments. Same description
-- values as monitors_local.lua -- fill them in once, use in both.
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local PRIMARY = "desc:<monitor desc here>"
local SECONDARY = "desc:<monitor desc here>"

hl.workspace_rule({ workspace = "1", monitor = PRIMARY, default = true })
hl.workspace_rule({ workspace = "2", monitor = PRIMARY })
hl.workspace_rule({ workspace = "3", monitor = PRIMARY })
hl.workspace_rule({ workspace = "4", monitor = PRIMARY })
hl.workspace_rule({ workspace = "5", monitor = PRIMARY })

hl.workspace_rule({ workspace = "6", monitor = SECONDARY, default = true })
hl.workspace_rule({ workspace = "7", monitor = SECONDARY })
hl.workspace_rule({ workspace = "8", monitor = SECONDARY })
hl.workspace_rule({ workspace = "9", monitor = SECONDARY })
