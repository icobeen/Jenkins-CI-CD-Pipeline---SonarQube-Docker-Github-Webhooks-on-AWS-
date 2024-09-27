# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the website files (HTML, CSS) to the default NGINX directory
COPY . /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80