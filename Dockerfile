FROM nginx

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY index.css /usr/share/nginx/html/__assets/index.css
COPY strapdown.js /usr/share/nginx/html/__assets/strapdown.js
COPY strapdown.css /usr/share/nginx/html/__assets/strapdown.css
COPY themes /usr/share/nginx/html/__assets/themes

COPY /config/default.conf /etc/nginx/conf.d

EXPOSE 8000
