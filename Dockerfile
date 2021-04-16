FROM node:lts-alpine
COPY src/. /usr/share/nginx/html
COPY nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]