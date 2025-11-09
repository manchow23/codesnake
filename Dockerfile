# Use a tiny Nginx image to serve static HTML
FROM nginx:alpine

# Remove the default index to be explicit (optional)
RUN rm -f /usr/share/nginx/html/*

# Copy your CodeSnake HTML into place
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Default command (nginx already uses this)
CMD ["nginx", "-g", "daemon off;"]
