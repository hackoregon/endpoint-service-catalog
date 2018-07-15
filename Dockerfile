FROM nginx

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY strapdown.js /usr/share/nginx/html/strapdown.js
COPY strapdown.css /usr/share/nginx/html/strapdown.css
COPY themes /usr/share/nginx/html/themes

COPY /config/default.conf /etc/nginx/conf.d

EXPOSE 8000
