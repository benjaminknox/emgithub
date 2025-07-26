FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html

EXPOSE 8086

CMD ["nginx", "-g", "daemon off;"]
