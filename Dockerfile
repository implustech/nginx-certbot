FROM nginx:1.19


RUN  apt-get update && apt-get install -y certbot python-certbot-nginx  && apt-get clean

COPY ./entrypoint.sh entrypoint.sh
COPY nginx.conf /etc/nginx/nginx.conf


ENTRYPOINT ["./entrypoint.sh"]
CMD  ["nginx", "-g", "daemon off;"]
