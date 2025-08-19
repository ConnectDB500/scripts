FROM alpine:latest
RUN apk add --no-cache nginx
WORKDIR /usr/share/nginx/html
COPY index.html index.html
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]