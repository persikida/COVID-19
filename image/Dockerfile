FROM registry.services.mts.ru/docker/nginx/nginx-alpine:1.17.2


RUN mkdir /www-data

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ../www/* /www-data/

EXPOSE 80

CMD ["nginx"]
