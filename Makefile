all: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d

re: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down --rmi all -v

dep:
	mkdir -p /home/lbonnefo/data/maria-db_data
	mkdir -p /home/lbonnefo/data/wordpress_data

.PHONY: all docker dep clean
