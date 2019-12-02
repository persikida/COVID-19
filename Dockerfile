FROM registry.services.mts.ru/docker/nginx/nginx-alpine:1.17.2 as builder

#Configuring timezone
ENV TZ 'Europe/Moscow'

RUN apk add --update --no-cache tzdata && ls /usr/share/zoneinfo
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo $TZ > /etc/timezone
RUN apk del tzdata && rm -rf /var/cache/apk/*

FROM registry.services.mts.ru/docker/nginx/nginx-alpine:1.17.2

ENV TZ 'Europe/Moscow'
COPY --from=builder /etc/localtime /etc/localtime
RUN echo $TZ > /etc/timezone
COPY www/ /var/www/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
#EXPOSE 80
#CMD sh -c "envsubst '\${API_ENDPOINT}' > /etc/nginx/conf.d/default.conf && cat /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;' "
