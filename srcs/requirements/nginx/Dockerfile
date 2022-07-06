FROM	debian:buster

RUN		apt-get update && apt-get install -y nginx openssl
	
COPY	./tools/rmouduri.42.fr.conf /etc/nginx/sites-available/

RUN		openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
		-subj "/C=FR/ST=France/L=Paris/O=42/CN=rmouduri.42.fr" \
		-keyout /etc/ssl/private/rmouduri.key \
		-out /etc/ssl/certs/rmouduri.crt \
		&& ln -s /etc/nginx/sites-available/rmouduri.42.fr.conf /etc/nginx/sites-enabled/rmouduri.42.fr.conf

EXPOSE	443

CMD		["nginx", "-g", "daemon off;"]