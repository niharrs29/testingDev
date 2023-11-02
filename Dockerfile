FROM nginx:latest

# Copy your HTML file to the web server's document root
COPY . /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80