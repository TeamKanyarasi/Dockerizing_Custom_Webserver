FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
# Add our custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/
# Copy the HTML file to the Nginx document root
COPY index.html /usr/share/nginx/html/
EXPOSE 80
