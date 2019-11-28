FROM registry.services.mts.ru/docker/nginx/nginx-alpine:1.17.2

ENV http_proxy=http://10.72.28.4:31080\
    https_proxy=http://10.72.28.4:31080

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /www-data

EXPOSE 80

CMD ["nginx"]
