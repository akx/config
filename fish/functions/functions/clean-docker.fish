function clean-docker
	docker ps -a | grep 'hours ago' | awk '{print $1}' | xargs docker rm
	docker ps -a | grep '.. minutes ago' | awk '{print $1}' | xargs docker rm
	docker ps -q -a -f status=exited | xargs -n 100 docker rm -v
	docker images -q --filter "dangling=true" | xargs -n 100 docker rmi
	docker images | grep "^<none>" | awk '{print $3}' | xargs docker rmi
end
