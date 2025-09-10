FROM nginx:alpine
LABEL org.opencontainers.image.source="https://github.com/franciscobmacedo/github-actions-with-coollify"
COPY ./static /usr/share/nginx/html
