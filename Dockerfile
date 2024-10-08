# Use an official Node.js image from the Docker Hub
FROM node:alpine3.18

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the source code to the container
COPY . .

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD [ "npm", "run", "start" ]
