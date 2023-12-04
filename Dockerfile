FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Set default value for SERVER_NAME
ARG SERVER_NAME

ENV SERVER_NAME=$SERVER_NAME

# Expose port
EXPOSE 8080

CMD [ "npm", "run", "${SERVER_NAME}"]