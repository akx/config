function v -d "Activate a virtualenv"
	if test (count $argv) -lt 1
		echo "Usage: v <environment name>"
		return 1
	end
	set -l envname $argv[1]
	if set -q VIRTUAL_ENV
		echo "Deactivating current virtualenv $VIRTUAL_ENV"
		deactivate
	end
	if test -d ~/envs/$envname
		echo "Activating ~/envs/$envname"
		source ~/envs/$envname/bin/activate.fish
	else
		echo "No such env."
	end
end
