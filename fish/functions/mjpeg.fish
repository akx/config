function mjpeg
	ffmpeg -i $argv[1] -q:v 15 -vcodec mjpeg -acodec copy $argv[2]
end
