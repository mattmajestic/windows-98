# Use an official nginx runtime as a parent image
FROM nginx:latest

# Copy everything from the current directory to the nginx web root directory
COPY . /usr/share/nginx/html/

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start nginx server when the container is run
CMD ["nginx", "-g", "daemon off;"]