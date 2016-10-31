function gin
	git --no-pager $argv | sed 's/^/🍸 /g'
end
