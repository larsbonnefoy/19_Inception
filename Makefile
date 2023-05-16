all: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d

re: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down --rmi all -v

destroy:
	sudo bash ./srcs/requirements/tools/destroy.sh

dep:
	mkdir -p /home/lbonnefo/data/maria-db_data
	mkdir -p /home/lbonnefo/data/wordpress_data
	sudo cp srcs/requirements/tools/hosts /etc/hosts

.PHONY: all docker dep clean destroy
