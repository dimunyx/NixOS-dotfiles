-- NOTE: Hyprland decoration config file
hl.config({
	decoration = {
		rounding = 16,
		rounding_power = 2,
		active_opacity = 0.95,
		inactive_opacity = 0.75,
		fullscreen_opacity = 1,
		shadow = {
        		enabled = true,
        		range = 16,
        		render_power = 3,
        		sharp = false,
        		color = "0xee1a1a1a",
        		color_inactive = "0x661a1a1a",
        		offset = "0 0",
        		scale = 1.0,
    		},
		blur = {
        		enabled = true,
        		size = 6,
        		passes = 1,
        		noise = 0.0117,
        		contrast = 0.8916,
        		brightness = 1.0,
        		vibrancy = 0.1696,
        		vibrancy_darkness = 0.0,
        		ignore_opacity = true,
        		new_optimizations = true,
        		xray = true,
        		popups = false,
        		popups_ignorealpha = 0.2,
        		input_methods = false,
        		input_methods_ignorealpha = 0.2,
        		special = false,
    		},
		glow = {
			enabled = false
		},
		motion_blur = {
			enabled = true,
			samples = 5
		}
	}
})
