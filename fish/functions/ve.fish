function ve
	set envpath ~/envs/$argv[2]
	if test -e $envpath
		echo path $envpath already exists
		return
	end
	set interp python$argv[1]
	eval $interp -m virtualenv $envpath
end
