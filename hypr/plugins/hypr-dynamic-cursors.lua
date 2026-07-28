-- NOTE: `Hyprland` plugin: `hypr-dynamic-cursors` config file
hl.plugin.load("/nix/store/z1c60p1sl8485gcg27cyni304x4kwbc7-hypr-dynamic-cursors/lib/libhypr-dynamic-cursors.so")

if hl.plugin.dynamic_cursors then
	hl.config({
		plugin = {
			dynamic_cursors = {
				enabled = true,
				mode = "none",
				shake = {
					enabled = true,
					threshold = 7.0,
					base = 4.0,
					speed = 2.0,
					influence = 0.0,
					limit = 0.0,
					timeout = 2000
				}
			}
		}
	})
end
