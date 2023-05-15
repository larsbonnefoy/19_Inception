FROM debian:buster

RUN apt-get -y update && apt-get install -y nginx openssl
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/nginx
RUN mkdir -p /etc/nginx/ssl

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/lbonnefo.key -out /etc/nginx/ssl/lbonnefo.crt -subj "/CN=lbonnefo"

CMD ["nginx", "-g", "daemon off;"]
#=> generates a self-signed SSL/TLS certif and private key.
#then we can use these files to configure our nginx server to use ssl/tls encryp
#req: generate certificate, -x509 is for selfsigned certificate
#nodes: tells OpenSSL not to encrypt the private key with a passphrase, not recommended for prod env
#days: number of days the certificate should be valid for
#newkey: new private key should be generated
#rsa:2048, rsa key of 2048 bits
#keyout: specifies the file where the provate key should be stored
#out: where certificate should be stored
#subj: specifies the subject of the certificate.
