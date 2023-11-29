FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Move to the parent directory (root of the project)
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Move back to the app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start:prod"]
