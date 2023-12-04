FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Copy the entrypoint script
COPY entrypoint.sh .

# Set execute permissions on the entrypoint script
RUN chmod +x entrypoint.sh

# Expose port
EXPOSE 8080

# Set the entrypoint to the shell script
ENTRYPOINT ["./entrypoint.sh"]
