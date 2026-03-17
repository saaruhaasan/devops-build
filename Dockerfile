# Use Node.js base image (adjust if app uses another runtime)
FROM node:18-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code
COPY . .

# Expose port 80
EXPOSE 80

# Start the application
CMD ["npm", "start"]

