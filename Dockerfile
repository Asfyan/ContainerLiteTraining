# Use the official nginx image as the base image
FROM nginx

# Copy your custom configuration file to the container
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy index.html into the nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start the nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]