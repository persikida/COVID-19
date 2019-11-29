FROM nginx:latest

RUN mkdir /www-data

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY www/* /www-data/

EXPOSE 80

CMD ["nginx"]
