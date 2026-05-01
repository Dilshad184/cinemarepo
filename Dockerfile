# Use official Python runtime as base image
FROM python:3.9-alpine

# Set working directory in container
WORKDIR /app

# Copy the current directory contents into the container
COPY index.html .

# Expose port 8000 for the web server
EXPOSE 8000

# Command to run Python's built-in HTTP server
# This serves files on port 8000
CMD ["python", "-m", "http.server", "8000"]
