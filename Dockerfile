FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

ARG SERVER_NAME

EXPOSE 8080

RUN if ["$SERVER_NAME" = "first-app"] ; then CMD [ "npm", "run", "start"] ; elif [ "$SERVER_NAME" = "second-app" ] ; then CMD [ "npm", "run", "start:second-app"] ; else echo "No server name provided" ; fi
