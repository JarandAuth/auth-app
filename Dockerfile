FROM nginx:1.25.4-alpine

COPY src/proxy/nginx.conf /etc/nginx/nginx.conf
COPY src/static /static
