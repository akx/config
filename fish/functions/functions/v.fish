function v -d "Activate a virtualenv"
	if test (count $argv) -lt 1
		echo "Usage: v <environment name>"
		return 1
	end
	set -l envname $argv[1]
	set -l envdir ~/envs/$envname
	set -l projdir ~/build/$envname
	if set -q VIRTUAL_ENV
		echo "Deactivating current virtualenv $VIRTUAL_ENV"
		deactivate
	end
	if test -d $envdir
		echo "Activating $envdir"
		source $envdir/bin/activate.fish
		echo "Setting DEBUG=1"
		set -gx DEBUG 1
	else
		echo "No such env."
	end
	if test -d $projdir
		echo "Chdiring to project directory $projdir"
		cd $projdir
	end
end
complete -x -c v -d "Project name" -a "(ls -1 /Users/akx/envs)"