all:
	mkdir
	docker-compose -f srcs/docker-compose.yaml up --build -d

clean:
	docker stop $$(docker ps -a -q)
	docker container prune
	docker image prune -a

vclean:
	docker volume rm $$(docker volume ls -q)

mkdir:
	mkdir -p /home/anastasia/data/
	mkdir -p /home/anastasia/data/wordpress
	mkdir -p /home/anastasia/data/mariadb
