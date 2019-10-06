FROM nginx

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

WORKDIR /usr/share/nginx/html/catalog

COPY index.html /usr/share/nginx/html/catalog/index.html
COPY index.css /usr/share/nginx/html/catalog/__assets/index.css
COPY civic-logo-animated.svg /usr/share/nginx/html/catalog/__assets/civic-logo-animated.svg
COPY themes /usr/share/nginx/html/catalog/__assets/themes

COPY /config/default.conf /etc/nginx/conf.d

EXPOSE 8000
