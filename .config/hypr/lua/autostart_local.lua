-- DESKTOP ONLY -- GPU/power tuning that would be wrong on a laptop
-- (always-performance profile + persistence mode kills battery life
-- and makes no sense without a discrete nvidia GPU).
--
-- IMPORTANT: `sudo nvidia-smi -pm 1` in your old exec-once almost
-- certainly silently failed (or hung waiting for a password) since
-- autostart commands run in a graphical session with no TTY for
-- sudo to prompt on. Set persistence mode via a systemd service or
-- udev rule instead, e.g.:
--   sudo systemctl enable nvidia-persistenced
-- and drop the nvidia-smi line here entirely.
hl.on("hyprland.start", function()
    hl.exec_cmd("powerprofilesctl set performance")
end)
