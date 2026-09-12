if status is-interactive
	set -U fish_greeting ""
	alias 'dev' 'cd ~/dev'
	alias 'nixos-status' 'git -C ~/.config/nixos status'
	alias 'nixos-dir' 'cd ~/.config/nixos/'
	alias 'nixos-add' 'git -C ~/.config/nixos add .'
	alias 'matrix' 'unimatrix --color blue --speed 96'
	alias 'cpufetch' 'cpufetch --color 137,180,250:137,180,250:137,180,250:205,214,244:205,214,244'
	alias 'start-video' 'gpu-screen-recorder -w screen -o "/home/dimunyx/Видео/Выходные видео/output.mp4" -c mp4 -f 60 -k h264 -q ultra -a default_output'
end