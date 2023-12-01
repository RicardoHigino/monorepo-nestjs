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

if [ "$SERVER_NAME" = "first-app" ] ; then
    echo "Running start"
    CMD [ "npm", "run", "start"]
elif [ "$SERVER_NAME" = "second-app" ] ; then
    echo "Running dev"
    CMD [ "npm", "run", "start:second-app"]
else
    echo "Running default"
    CMD [ "npm", "run", "start"]
fi