FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY ["nestjs-monorepo/package.json", "nestjs-monorepo/package-lock.json*", "nestjs-monorepo/"]

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start:prod"]
