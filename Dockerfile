FROM nginx:latest
RUN rm /etc/nginx/sites-available/default && \
    cp nginx.conf /etc/nginx/sites-available
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80