function mokko
	say -v mikko -o /tmp/mokko.aiff $argv[2..-1]
	play /tmp/mokko.aiff pitch $argv[1]
end
