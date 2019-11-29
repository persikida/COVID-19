FROM registry.services.mts.ru/docker/nginx:1.17.3-alpine

RUN mkdir /www-data

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY www/* /www-data/

EXPOSE 8080

CMD ["nginx"]
