function fix_dirty_py
	for f in (git status --porcelain | grep "^[AM ][M ]" | cut -d ' ' -f3 | grep 'py$')
		isort "$f"
		autopep8 -vv -aa --max-line-length=100000 -i "$f"
	end
end
