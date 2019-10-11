FROM nginx:1.17


RUN  apt-get update && apt-get install -y certbot python-certbot-nginx  && apt-get clean

COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
CMD  ["nginx", "-g", "daemon off;"]
