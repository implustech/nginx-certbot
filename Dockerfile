FROM nginx:1.17

RUN  apt-get update && apt-get install -y certbot python-certbot-nginx  && apt-get clean


