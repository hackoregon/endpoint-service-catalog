FROM nginx

VOLUME /usr/share/nginx/html

VOLUME /etc/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY index.css /usr/share/nginx/html/__assets/index.css
COPY github-icon.svg /usr/share/nginx/html/__assets/github-icon.svg
COPY civic-logo-animated.svg /usr/share/nginx/html/__assets/civic-logo-animated.svg
COPY themes /usr/share/nginx/html/__assets/themes

COPY /config/default.conf /etc/nginx/conf.d

EXPOSE 8000
