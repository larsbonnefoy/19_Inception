all: dep
	sudo docker-compose -f srcs/docker-compose.yml up -d

docker:
	sudo apt-get update
	sudo apt-get intall -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

dep:
	mkdir -p /home/lbonnefo/data/mariadb_data

.PHONY: all docker dep
