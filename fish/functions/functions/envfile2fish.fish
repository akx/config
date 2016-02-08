function envfile2fish
	grep -v "^#" ~/.env | sed -E '
	s/=/ /
	s/^(.+)$/set -xg \1;/'
end