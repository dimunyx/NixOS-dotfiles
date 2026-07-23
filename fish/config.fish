if status is-interactive
	set -U fish_greeting ""
	alias matrix 'unimatrix --color blue --speed 95'
	alias dev 'cd  ~/GitHub'
	alias cpufetch 'cpufetch --color 181,143,255:181,143,255:232,216,255:232,216,255:232,216,255:232,216,255'
	alias start-video 'gpu-screen-recorder -w portal -o "/home/dimunyx/Видео/Выходные видео/output.mkv" -c mkv -f 60 -k h264 -q very_high -a default_output'
end
