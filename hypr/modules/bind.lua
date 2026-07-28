-- NOTE: `Hyprland` bind config file
local mod = "SUPER"

-- Window management
hl.bind(mod .. " + C", hl.dsp.window.close())
hl.bind(mod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + SHIFT + F", hl.dsp.window.fullscreen({action = "toggle" }))
hl.bind(mod .. " + LEFT", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + RIGHT", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + UP", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + DOWN", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + ALT + LEFT", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mod .. " + ALT + RIGHT", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mod .. " + ALT + UP", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mod .. " + ALT + DOWN", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mod .. " + SHIFT + LEFT", hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + RIGHT", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + UP", hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + DOWN", hl.dsp.window.move({ direction = "down" }))
hl.bind(mod .. " + CTRL + LEFT", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mod .. " + CTRL + RIGHT", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true } )
hl.bind(mod .. " + CTRL + UP", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true } )
hl.bind(mod .. " + CTRL + DOWN", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true } )

-- Workspace management
for i = 1, 10 do
	local key = i % 10
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
	hl.bind(mod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end
hl.bind("CTRL + ALT + UP", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("CTRL + ALT + DOWN", hl.dsp.focus({ workspace = "e+1" }))

-- Mouse management
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1"}))
hl.bind(mod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1"}))

-- Layers + `Quickshell`
hl.bind(mod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd("dimunyx-qs ipc call appLauncher apps"))
hl.bind(mod .. " + V", hl.dsp.exec_cmd("dimunyx-qs ipc call appLauncher clip"))
hl.bind(mod .. " + SHIFT + V", hl.dsp.exec_cmd("dimunyx-qs ipc call appLauncher clipClear"))
hl.bind(mod .. " + R", hl.dsp.exec_cmd("dimunyx-qs ipc call appLauncher cmd"))
hl.bind(mod .. " + CTRL + W", hl.dsp.exec_cmd("dimunyx-qs ipc call appLauncher windows"))
hl.bind(mod .. " + L", hl.dsp.exec_cmd("dimunyx-qs ipc call session lock"))
hl.bind(mod .. " + N", hl.dsp.exec_cmd("dimunyx-qs ipc call notifications toggle"))
hl.bind(mod .. " + SHIFT + N", hl.dsp.exec_cmd("dimunyx-qs ipc call notifications dnd"))
hl.bind(mod .. " + ESCAPE", hl.dsp.exec_cmd("dimunyx-qs ipc call session toggle"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dimunyx-qs ipc call volume volMute"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dimunyx-qs ipc call volume volDown"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dimunyx-qs ipc call volume volUp"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("dimunyx-qs ipc call volume micMute"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("dimunyx-qs ipc call brightness brightUp"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("dimunyx-qs ipc call brightDown"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("dimunyx-qs ipc call media playPause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("dimunyx-qs ipc call media playPause"))
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("dimunyx-qs ipc call media pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("dimunyx-qs ipc call media previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("dimunyx-qs ipc call media next"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))

-- App management
hl.bind(mod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mod .. " + O", hl.dsp.exec_cmd("kitty -e opencode"))
hl.bind(mod .. " + I", hl.dsp.exec_cmd("nwg-look"))
hl.bind(mod .. " + Z", hl.dsp.exec_cmd("zen"))
hl.bind(mod .. " + M", hl.dsp.exec_cmd("flatpak run io.github.elyprismlauncher.ElyPrismLauncher"))

-- Keyboard Layout management
hl.bind("ALT + TAB", hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))

-- `HyprWM` useful shortcuts management
hl.bind(mod .. " + CTRL + SHIFT + A", hl.dsp.exec_cmd("kitty -e nvim ~/.config/hypr"))
hl.bind(mod .. " + CTRL + SHIFT + E", hl.dsp.exec_cmd("kitty -e nvim ~/.config"))
hl.bind(mod .. " + CTRL + SHIFT + N", hl.dsp.exec_cmd("kitty -e nvim /etc/nixos"))

-- Zoom management
local function zoomfunction(value)
	local zoomvalue = hl.get_config("cursor:zoom_factor")
	if (zoomvalue + value) > 20.0 then
		hl.config({ cursor = { zoom_factor = 20.0 } })
	elseif (zoomvalue + value) < 1.0 then
		hl.config({ cursor = { zoom_factor = 1.0 } })
	else
		hl.config({ cursor = { zoom_factor = zoomvalue + value } })
	end
end
hl.bind("SUPER + Minus", function() zoomfunction(-0.3) end, { repeating = true, description = "Screen: Zoom out" })
hl.bind("SUPER + Equal", function() zoomfunction(0.3) end, { repeating = true, description = "Screen: Zoom in" })
