# Start your image with a node base image
FROM node:18-alpine

# The /app directory should act as the main application directory
WORKDIR /asdeporte-pruebas

# Copy the app package and package-lock.json file
COPY package*.json ./


# Install node packages, install serve, build the app, and remove dependencies at the end

EXPOSE 8000

# Start the app using serve command
CMD [ "node", "server.js" ]