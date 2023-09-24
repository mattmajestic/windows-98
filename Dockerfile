# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy everything from the current directory to the container
COPY . /app

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start a simple HTTP server to serve HTML files
CMD ["python", "-m", "http.server", "80"]