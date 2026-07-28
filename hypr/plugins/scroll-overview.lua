-- `Hyprland` plugin: `hypr-scroll-overview` config file
hl.plugin.load("/nix/store/b4nfkm179i7kjjdshdc3rz66r3wiqg66-hyprland-scroll-overview-de74825/lib/libscrolloverview.so")

if hl.plugin.scrolloverview then
	hl.config({
		plugin = {
			scrolloverview = {
				blur = false
			}
		}
	})
	hl.bind("SUPER + W", function()
    		hl.plugin.scrolloverview.overview("toggle all")
	end)
end
