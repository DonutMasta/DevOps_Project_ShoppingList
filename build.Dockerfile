# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
#COPY package*.json ./
COPY public/ /app/public
COPY src/ /app/src
COPY package.json /app/

# Install project dependencies with script

COPY ./build.sh /app/
RUN chmod +x ./build.sh


# Define the command to start the application
CMD ["./build.sh" ]
