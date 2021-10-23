build:
	sudo mkdir /home/jkeitha/data/db
	sudo mkdir /home/jkeitha/data/wp
	docker-compose -f src/docker-compose.yml up  --build
start:
	docker-compose -f src/docker-compose.yml start 
up:
	docker-compose -f src/docker-compose.yml up
down:
	docker-compose -f src/docker-compose.yml down
ps:
	docker-compose -f src/docker-compose.yml ps
stop:
	docker-compose -f src/docker-compose.yml stop
fclean: down
ifneq (,$(docker ps -qa))
	sudo docker stop $(docker ps -qa)
endif
ifneq (,$(docker ps -qa))
	sudo docker rm $(docker ps -qa)
endif
ifneq  (,$(docker images -qa))
	sudo docker rmi -f $(docker images -qa)
endif
ifneq  (,$(docker volume ls -q))
	sudo docker volume rm $(docker volume ls -q)
endif
ifneq  (,$(docker network ls -q))
	sudo docker network rm $(docker network ls -q) 2>dev/null
endif
	sudo docker system prune -a --force
	sudo docker system prune -a --volumes
	sudo rm -Rf /home/jkeitha/data/db
	sudo rm -Rf /home/jkeitha/data/wp

re: fclean 
	docker-compose -f src/docker-compose.yml up --build
.PHONY: build up start down stop ps fclean re
