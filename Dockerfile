# Use the official Nginx image as a base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static assets
RUN rm -rf ./*

# Copy your app files to the container
COPY index.html .
COPY style.css .
COPY script.js .

# Expose port 80
EXPOSE 80

# Start Nginx (already handled by base image's default CMD)
