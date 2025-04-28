# Use Node.js 18 base image
FROM node:18

# Create a non-root user (if not using one already)
RUN useradd -m node

# Change the ownership of the npm cache directory to the 'node' user
RUN chown -R node:node /home/node/.npm

# Set the user to 'node' for running npm commands
USER node

# Optionally, set npm cache location to a directory the node user owns
RUN npm config set cache /home/node/.npm

# Set the working directory for the app
WORKDIR /app

# Copy your application files into the container
COPY . .

# Install dependencies using npm
RUN npm install

# Run your app
CMD ["npm", "start"]

