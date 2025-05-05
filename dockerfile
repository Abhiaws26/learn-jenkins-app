FROM node:18-alpine

# Ensure npm cache has correct permissions
RUN mkdir -p /root/.npm && chown -R node:node /root/.npm


# Set working directory
WORKDIR /app

# Copy package files and fix ownership
COPY package*.json ./
RUN chown node:node /app/package*.json

# Fix ownership of /app directory
RUN chown -R node:node /app

# Switch to non-root user
USER node

# Install dependencies
RUN npm install

# Copy the rest of the application (as non-root)
COPY --chown=node:node . .

# Expose application port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

