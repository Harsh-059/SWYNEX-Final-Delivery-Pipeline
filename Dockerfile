# Use Ubuntu as the base image
FROM ubuntu:24.04

# Set working directory
WORKDIR /app

# Copy application and test files
COPY app.sh test.sh ./

# Give execution permissions
RUN chmod +x app.sh test.sh

# Run the application
CMD ["./app.sh"]
