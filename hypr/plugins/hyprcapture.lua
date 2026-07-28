-- NOTE: `Hyprland` plugin: `hyprcapture` config file
hl.plugin.load("/nix/store/s0s0islq3261825cm0g6j875ca3galm2-hyprcapture-0.2.6/lib/libhyprcapture.so")

if hl.plugin.hyprcapture then
	hl.config({
    		plugin = {
        		hyprcapture = {
				helper = "/nix/store/s0s0islq3261825cm0g6j875ca3galm2-hyprcapture-0.2.6/bin/hyprcapture-ui"
			}
    		}
	})
	hl.bind("SUPER + SHIFT + S", hl.plugin.hyprcapture.open)
end
