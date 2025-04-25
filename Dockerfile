# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the index.html and other assets to the appropriate location
COPY index.html /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images
COPY assets /usr/share/nginx/html/assets

# Expose port 80
EXPOSE 80
