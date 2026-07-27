-- NOTE: Hyprland autostart config file
hl.on("hyprland.start", function()
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("udiskie --tray")
	hl.exec_cmd("qs -d")
	hl.exec_cmd("gammastep")
end)
