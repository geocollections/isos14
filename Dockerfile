FROM node:lts-alpine
WORKDIR /app
COPY /app/src/. /usr/share/nginx/html
COPY /app/nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]