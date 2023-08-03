# Use an official Flutter image as the base image
FROM cirrusci/flutter AS build

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Flutter web app
RUN flutter build web --release

# Use an official Nginx image to serve the built app
FROM nginx:alpine

# Copy the built app from the previous stage
COPY --from=build /app/build/web /usr/share/nginx/html
