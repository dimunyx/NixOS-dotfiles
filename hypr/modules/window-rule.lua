-- NOTE: Hyprland window rule config file
hl.window_rule({
	name = "Open GNOME Calculator floating",
	match = {
		class = "org.gnome.Calculator"
	},
	float = true,
	center = true
})

hl.window_rule({
	name = "Allow tearing for all apps",
	match = {
		class = ".*"
	},
	immediate = true
})
