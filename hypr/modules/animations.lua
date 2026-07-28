-- NOTE: Hyprland animations config file
hl.config({
	animations = {
		enabled = true
	}
})

hl.curve("fade_curve", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1.0} } })
hl.curve("fade_in", { type = "bezier", points = { {0.42, 0.0}, {0.58, 1.0} } })
hl.curve("fade_out", { type = "bezier", points = { {0.42, 0.0}, {0.58, 1.0} } })
hl.curve("custom", { type = "bezier", points = { {0, 0}, {0, 1} } })
hl.animation({ leaf = "global", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, bezier = "custom", style = "popin 100%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "custom", style = "popin 100%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 2, bezier = "custom", style = "slide 100%" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2, bezier = "fade_in" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "fade_out" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 2, bezier = "fade_curve" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, bezier = "fade_in" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, bezier = "fade_out" })
hl.animation({ leaf = "layers", enabled = true, speed = 2, bezier = "fade_curve", style = "popin" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 2, bezier = "fade_in", style = "popin" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2, bezier = "fade_out", style = "popin" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "fade_curve", style = "slidefadevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2, bezier = "fade_curve", style = "slidefadevert" })
hl.animation({ leaf = "border", enabled = true, speed = 2, bezier = "fade_curve" })
