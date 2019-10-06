FROM nginx

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY index.css /usr/share/nginx/html/index.css
COPY civic-logo-animated.svg /usr/share/nginx/html/civic-logo-animated.svg
COPY themes /usr/share/nginx/html/themes

COPY /config/default.conf /etc/nginx/conf.d

EXPOSE 8000
