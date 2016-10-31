function mjpegav
	ffmpeg -i $argv[1] -q:v 15 -vcodec mjpeg -vf "yadif=0:-1:0" -acodec copy $argv[2]
end
